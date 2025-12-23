import 'package:masterfabric_core/src/helper/local_storage/local_storage_helper.dart';
import 'package:flutter/foundation.dart';

class OnboardingStorageHelper {
  static final OnboardingStorageHelper _instance =
      OnboardingStorageHelper._internal();
  factory OnboardingStorageHelper() => _instance;
  OnboardingStorageHelper._internal();
  static const String _onboardingSeenKey = 'osmea_onboarding_seen';

  /// Check if onboarding has been seen
  Future<bool> hasSeenOnboarding() async {
    try {
      await LocalStorageHelper.init();
      final seen = await LocalStorageHelper.getItem(_onboardingSeenKey);
      debugPrint("📱 Onboarding seen status from LocalStorage: $seen");

      // Check for both boolean and string values
      bool result = false;
      if (seen is bool) {
        result = seen;
      } else if (seen is String) {
        result = seen.toLowerCase() == 'true';
      } else if (seen == 'true' || seen == true) {
        result = true;
      }

      debugPrint("✅ Final onboarding seen result: $result");
      return result;
    } catch (e) {
      debugPrint("❌ Error checking onboarding status: $e");
      return false;
    }
  }

  /// Mark onboarding as seen
  Future<void> markOnboardingSeen() async {
    try {
      await LocalStorageHelper.init();

      // Debug: Before saving
      final beforeSave = await LocalStorageHelper.getItem(_onboardingSeenKey);
      debugPrint("🔍 Before save: $beforeSave");

      await LocalStorageHelper.setItem(_onboardingSeenKey, true);
      debugPrint("✅ Onboarding marked as seen in LocalStorage");

      // Verify save immediately
      final afterSave = await LocalStorageHelper.getItem(_onboardingSeenKey);
      debugPrint("🔍 After save verification: $afterSave");
    } catch (e) {
      debugPrint("❌ Error marking onboarding as seen: $e");
    }
  }

  /// Reset onboarding status (DEV mode only)
  Future<void> resetOnboardingStatus() async {
    if (kDebugMode) {
      try {
        await LocalStorageHelper.init();
        await LocalStorageHelper.removeItem(_onboardingSeenKey);
        debugPrint("🔄 DEV: Onboarding status reset in LocalStorage");

        // Verify removal
        final verified = await LocalStorageHelper.getItem(_onboardingSeenKey);
        debugPrint("🔍 Verification after reset: $verified");
      } catch (e) {
        debugPrint("❌ Error resetting onboarding status: $e");
      }
    } else {
      debugPrint("⚠️ Reset onboarding only available in DEBUG mode");
    }
  }

  /// Get all onboarding related data (for debugging)
  Future<Map<String, dynamic>> getOnboardingDebugInfo() async {
    if (kDebugMode) {
      try {
        await LocalStorageHelper.init();
        final onboardingData = <String, dynamic>{};

        // Get specific onboarding key
        final seen = await LocalStorageHelper.getItem(_onboardingSeenKey);
        onboardingData[_onboardingSeenKey] = seen;

        // Get all items for debugging
        final allItems = await LocalStorageHelper.getAllItems();
        onboardingData['all_items'] = allItems;

        debugPrint("🐛 Onboarding debug info: $onboardingData");
        return onboardingData;
      } catch (e) {
        debugPrint("❌ Error getting debug info: $e");
        return {};
      }
    }
    return {};
  }
}
