import Flutter
import UIKit
import AppTrackingTransparency
import AVFoundation
import Photos
import CoreLocation
import Contacts

/// Native iOS plugin for masterfabric_core.
///
/// Handles App Tracking Transparency (ATT) and runtime permissions via
/// FlutterMethodChannel so the Dart side can show dialogs without third-party packages.
public class MasterfabricCorePlugin: NSObject, FlutterPlugin, CLLocationManagerDelegate {

  private var locationManager: CLLocationManager?
  private var locationResult: FlutterResult?

  // MARK: - Plugin Registration

  public static func register(with registrar: FlutterPluginRegistrar) {
    let attChannel = FlutterMethodChannel(
      name: "com.masterfabric.app_tracking_transparency",
      binaryMessenger: registrar.messenger()
    )
    let permChannel = FlutterMethodChannel(
      name: "com.masterfabric.permission_helper",
      binaryMessenger: registrar.messenger()
    )
    let instance = MasterfabricCorePlugin()
    registrar.addMethodCallDelegate(instance, channel: attChannel)
    registrar.addMethodCallDelegate(instance, channel: permChannel)
  }

  // MARK: - Method Call Handler

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "requestTracking":
      requestTrackingAuthorization(result: result)
    case "getTrackingStatus":
      getTrackingAuthorizationStatus(result: result)
    case "checkPermission":
      if let key = call.arguments as? String {
        checkPermission(key: key, result: result)
      } else {
        result(FlutterError(code: "INVALID_ARGS", message: "Permission key required", details: nil))
      }
    case "requestPermission":
      if let key = call.arguments as? String {
        requestPermission(key: key, result: result)
      } else {
        result(FlutterError(code: "INVALID_ARGS", message: "Permission key required", details: nil))
      }
    case "openAppSettings":
      openAppSettings(result: result)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

  // MARK: - ATT Methods

  /// Presents the App Tracking Transparency authorization dialog.
  /// Returns `true` when the user taps "Allow", `false` otherwise.
  private func requestTrackingAuthorization(result: @escaping FlutterResult) {
    if #available(iOS 14, *) {
      // ATT dialog must be presented after the app is in the foreground.
      // A small delay ensures the app is fully active before the system
      // dialog appears, which prevents it from being silently dismissed.
      DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
        ATTrackingManager.requestTrackingAuthorization { status in
          DispatchQueue.main.async {
            result(status == .authorized)
          }
        }
      }
    } else {
      // Pre-iOS 14: ATT framework does not exist; tracking is allowed.
      result(true)
    }
  }

  /// Returns the current tracking authorization status as an integer.
  ///
  /// Values match `ATTrackingManager.AuthorizationStatus`:
  /// - 0: notDetermined
  /// - 1: restricted
  /// - 2: denied
  /// - 3: authorized
  private func getTrackingAuthorizationStatus(result: @escaping FlutterResult) {
    if #available(iOS 14, *) {
      result(Int(ATTrackingManager.trackingAuthorizationStatus.rawValue))
    } else {
      // Pre-iOS 14: considered authorized (no ATT framework).
      result(3)
    }
  }

  // MARK: - Permission Helper Methods

  private func checkPermission(key: String, result: @escaping FlutterResult) {
    let granted: Bool
    switch key {
    case "camera":
      granted = AVCaptureDevice.authorizationStatus(for: .video) == .authorized
    case "microphone":
      granted = AVCaptureDevice.authorizationStatus(for: .audio) == .authorized
    case "photos":
      granted = PHPhotoLibrary.authorizationStatus() == .authorized
    case "location", "locationWhenInUse":
      let mgr = CLLocationManager()
      if #available(iOS 14.0, *) {
        granted = mgr.authorizationStatus == .authorizedWhenInUse ||
          mgr.authorizationStatus == .authorizedAlways
      } else {
        granted = CLLocationManager.authorizationStatus() == .authorizedWhenInUse ||
          CLLocationManager.authorizationStatus() == .authorizedAlways
      }
    case "contacts":
      granted = CNContactStore.authorizationStatus(for: .contacts) == .authorized
    case "storage", "notification":
      result(true)
      return
    default:
      result(false)
      return
    }
    result(granted)
  }

  private func requestPermission(key: String, result: @escaping FlutterResult) {
    switch key {
    case "camera":
      AVCaptureDevice.requestAccess(for: .video) { granted in
        DispatchQueue.main.async { result(granted) }
      }
    case "microphone":
      AVCaptureDevice.requestAccess(for: .audio) { granted in
        DispatchQueue.main.async { result(granted) }
      }
    case "photos":
      PHPhotoLibrary.requestAuthorization { status in
        DispatchQueue.main.async { result(status == .authorized) }
      }
    case "location", "locationWhenInUse":
      if locationManager == nil {
        locationManager = CLLocationManager()
        locationManager?.delegate = self
      }
      locationResult = result
      locationManager?.requestWhenInUseAuthorization()
    case "contacts":
      let store = CNContactStore()
      store.requestAccess(for: .contacts) { granted, _ in
        DispatchQueue.main.async { result(granted) }
      }
    case "storage", "notification":
      result(true)
    default:
      result(false)
    }
  }

  private func openAppSettings(result: @escaping FlutterResult) {
    if let url = URL(string: UIApplication.openSettingsURLString),
       UIApplication.shared.canOpenURL(url) {
      UIApplication.shared.open(url) { success in
        result(success)
      }
    } else {
      result(false)
    }
  }

  // MARK: - CLLocationManagerDelegate

  public func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
    finishLocationRequest(status: status)
  }

  @available(iOS 14.0, *)
  public func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
    finishLocationRequest(status: manager.authorizationStatus)
  }

  private func finishLocationRequest(status: CLAuthorizationStatus) {
    guard let result = locationResult else { return }
    if status != .notDetermined {
      locationResult = nil
      result(status == .authorizedWhenInUse || status == .authorizedAlways)
    }
  }
}
