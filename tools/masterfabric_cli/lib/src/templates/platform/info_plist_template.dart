import '../../context/template_context.dart';

/// Returns additional Info.plist keys to inject into the existing plist file.
class InfoPlistTemplate {
  InfoPlistTemplate._();

  /// Returns the XML snippet that should be inserted before the closing
  /// `</dict>` tag of the existing Info.plist file.
  static String permissionKeys(TemplateContext ctx) => '''
\t<key>NSCameraUsageDescription</key>
\t<string>This app needs camera access to capture photos.</string>
\t<key>NSPhotoLibraryUsageDescription</key>
\t<string>This app needs photo library access to select images.</string>
\t<key>NSLocationWhenInUseUsageDescription</key>
\t<string>This app needs location access to provide location-based features.</string>
\t<key>NSLocationAlwaysUsageDescription</key>
\t<string>This app needs background location access to provide location-based features.</string>
\t<key>NSUserTrackingUsageDescription</key>
\t<string>This identifier will be used to deliver personalized ads to you.</string>
\t<key>NSAppTransportSecurity</key>
\t<dict>
\t\t<key>NSAllowsArbitraryLoads</key>
\t\t<true/>
\t</dict>''';
}
