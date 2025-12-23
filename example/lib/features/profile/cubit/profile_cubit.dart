import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/profile/cubit/profile_state.dart';

/// Profile Cubit - Demonstrates helper usage
class ProfileCubit extends BaseViewModelCubit<ProfileState> {
  ProfileCubit() : super(const ProfileState.initial());

  /// Load profile data
  Future<void> loadProfile() async {
    stateChanger(const ProfileState.loading());

    try {
      // Simulate loading
      await Future.delayed(const Duration(seconds: 1));

      // Example: Get device information using helpers
      final deviceInfo = DeviceInfoHelper.instance;
      final platform = await deviceInfo.platformDeviceDeviceFactory();
      final deviceId = await deviceInfo.platformDeviceDeviceID();
      final manufacturer = await deviceInfo.platformDeviceDeviceFactory();

      // Example: Get stored user data using LocalStorageHelper
      final userName = LocalStorageHelper.getString('user_name') ?? 'John Doe';
      final email = LocalStorageHelper.getString('user_email') ?? 'john@example.com';
      
      // Store example data if not exists
      if (userName == 'John Doe') {
        await LocalStorageHelper.setString('user_name', 'John Doe');
        await LocalStorageHelper.setString('user_email', 'john@example.com');
      }

      stateChanger(ProfileState.loaded(
        userName: userName,
        email: email,
        platform: platform,
        deviceId: deviceId,
        manufacturer: manufacturer,
      ));
    } catch (e) {
      stateChanger(ProfileState.error(errorMessage: e.toString()));
    }
  }

  /// Sign out
  Future<void> signOut() async {
    // Clear stored data
    await LocalStorageHelper.remove('user_name');
    await LocalStorageHelper.remove('user_email');
    
    // Reset state
    stateChanger(const ProfileState.initial());
  }
}

