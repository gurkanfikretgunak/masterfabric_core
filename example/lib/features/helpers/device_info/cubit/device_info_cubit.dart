import 'dart:io';
import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/device_info/cubit/device_info_state.dart';

/// Device Info Cubit
class DeviceInfoCubit extends BaseViewModelCubit<DeviceInfoState> {
  DeviceInfoCubit() : super(const DeviceInfoState.initial());

  /// Load device information
  Future<void> loadDeviceInfo() async {
    stateChanger(const DeviceInfoState.loading());

    try {
      final deviceInfo = DeviceInfoHelper.instance;
      final platform = Platform.isAndroid ? 'Android' : Platform.isIOS ? 'iOS' : 'Unknown';
      final deviceName = await deviceInfo.platformDeviceDeviceName();
      final deviceId = await deviceInfo.platformDeviceDeviceID();
      final manufacturer = await deviceInfo.platformDeviceDeviceFactory();
      final model = await deviceInfo.platformDeviceDeviceModel();
      final versions = await deviceInfo.platformDeviceSystemVersion();

      stateChanger(DeviceInfoState.loaded(
        platform: platform,
        deviceName: deviceName,
        deviceId: deviceId,
        manufacturer: manufacturer,
        model: model,
        systemVersion: versions.join('.'),
      ));
    } catch (e) {
      stateChanger(DeviceInfoState.error(
        errorMessage: e.toString(),
      ));
    }
  }
}

