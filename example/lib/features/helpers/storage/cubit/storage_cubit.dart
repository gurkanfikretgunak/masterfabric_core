import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/storage/cubit/storage_state.dart';

/// Storage Cubit
class StorageCubit extends BaseViewModelCubit<StorageState> {
  StorageCubit() : super(const StorageState.initial()) {
    _loadStoredValues();
  }

  Future<void> _loadStoredValues() async {
    stateChanger(StorageState(
      storedString: LocalStorageHelper.getString('demo_string'),
      storedInt: LocalStorageHelper.getInt('demo_int'),
      storedBool: LocalStorageHelper.getBool('demo_bool'),
      storedDouble: LocalStorageHelper.getDouble('demo_double'),
    ));
  }

  Future<void> saveString(String key, String value) async {
    await LocalStorageHelper.setString(key, value);
    await _loadStoredValues();
  }

  Future<void> saveInt(String key, int value) async {
    await LocalStorageHelper.setInt(key, value);
    await _loadStoredValues();
  }

  Future<void> saveBool(String key, bool value) async {
    await LocalStorageHelper.setBool(key, value);
    await _loadStoredValues();
  }

  Future<void> saveDouble(String key, double value) async {
    await LocalStorageHelper.setDouble(key, value);
    await _loadStoredValues();
  }

  Future<void> clearStorage() async {
    await LocalStorageHelper.remove('demo_string');
    await LocalStorageHelper.remove('demo_int');
    await LocalStorageHelper.remove('demo_bool');
    await LocalStorageHelper.remove('demo_double');
    await _loadStoredValues();
  }
}

