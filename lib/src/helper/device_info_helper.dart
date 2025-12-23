import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

abstract class DeviceInfoHelperBase {
  Future<String> platformDeviceDeviceFactory();
  Future<String> platformDeviceDeviceName();
  Future<Map<String, dynamic>> platformDeviceData();
  Future<List<String>> platformDeviceSystemVersion();
  Future<String> platformDeviceDeviceID();
  Future<bool> platformDevicePhysical();
  Future<String> platformDeviceDeviceModel();
  Future<int> getAndroidApiLevel();
}

class Result<T> {
  final T? value;
  final String? error;

  Result({this.value, this.error});
}

class DeviceInfoHelper implements DeviceInfoHelperBase {
  static final DeviceInfoHelper _instance = DeviceInfoHelper._init();
  static DeviceInfoHelper get instance => _instance;
  DeviceInfoHelper._init();

  @override
  Future<String> platformDeviceDeviceFactory() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.manufacturer;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo.utsname.version;
      }
    } catch (e) {
      debugPrint('🔧 Error in platformDeviceDeviceFactory: $e');
    }
    return 'Unknown Manufacturer';
  }

  @override
  Future<String> platformDeviceDeviceName() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.display;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo.name;
      }
    } catch (e) {
      debugPrint('🔍 Error in platformDeviceDeviceName: $e');
    }
    return 'Unknown Device Name';
  }

  @override
  Future<Map<String, dynamic>> platformDeviceData() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.data;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo.data;
      }
    } catch (e) {
      debugPrint('⚠️ Error in platformDeviceData: $e');
    }
    return {};
  }

  @override
  Future<List<String>> platformDeviceSystemVersion() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.systemFeatures;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return [iosInfo.systemVersion];
      }
    } catch (e) {
      debugPrint('📅 Error in platformDeviceSystemVersion: $e');
    }
    return [];
  }

  @override
  Future<String> platformDeviceDeviceID() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.serialNumber;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo.identifierForVendor ?? 'Unknown Device ID';
      }
    } catch (e) {
      debugPrint('🔑 Error in platformDeviceDeviceID: $e');
      return 'Unknown Device ID';
    }
    return 'Unknown Device ID';
  }

  @override
  Future<bool> platformDevicePhysical() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.isPhysicalDevice;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo.isPhysicalDevice;
      }
    } catch (e) {
      debugPrint('🛠️ Error in platformDevicePhysical: $e');
      return false;
    }
    return false;
  }

  @override
  Future<String> platformDeviceDeviceModel() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.model;
      } else if (Platform.isIOS) {
        var iosInfo = await DeviceInfoPlugin().iosInfo;
        return iosInfo.model;
      }
    } catch (e) {
      debugPrint('📱 Error in platformDeviceDeviceModel: $e');
      return 'Unknown Device Model';
    }
    return 'Unknown Device Model';
  }

  @override
  Future<int> getAndroidApiLevel() async {
    try {
      if (Platform.isAndroid) {
        var androidInfo = await DeviceInfoPlugin().androidInfo;
        return androidInfo.version.sdkInt;
      }
    } catch (e) {
      debugPrint('🤖 Error getting Android API level: $e');
    }
    // if iOS or error return 0
    return 0;
  }
}
