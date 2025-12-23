import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/home/cubit/home_state.dart';

/// Home Cubit - Example of using BaseViewModelCubit
class HomeCubit extends BaseViewModelCubit<HomeState> {
  HomeCubit() : super(const HomeState.initial());

  /// Load initial data
  Future<void> loadData() async {
    stateChanger(const HomeState.loading());
    
    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 1));
      
      // Example: Get device info
      final deviceInfo = DeviceInfoHelper.instance;
      final platform = await deviceInfo.platformDeviceDeviceFactory();
      
      stateChanger(HomeState.loaded(
        platform: platform,
      ));
    } catch (e) {
      stateChanger(HomeState.error(
        errorMessage: e.toString(),
      ));
    }
  }
}

