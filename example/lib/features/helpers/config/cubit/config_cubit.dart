import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/config/cubit/config_state.dart';

Map<String, dynamic>? _getConfigSection(AssetConfigHelper helper, String section) {
  try {
    final keys = ['appName', 'version', 'environment', 'debugMode', 'maintenanceMode'];
    final Map<String, dynamic> result = {};
    for (final key in keys) {
      final fullKey = '$section.$key';
      if (helper.hasKey(fullKey)) {
        final value = helper.getString(fullKey, '');
        if (value.isNotEmpty) {
          result[key] = value;
        }
      }
    }
    return result.isEmpty ? null : result;
  } catch (e) {
    return null;
  }
}

/// Config Cubit
class ConfigCubit extends BaseViewModelCubit<ConfigState> {
  ConfigCubit() : super(const ConfigState.initial());

  Future<void> loadConfig() async {
    stateChanger(const ConfigState.loading());

    try {
      final configHelper = AssetConfigHelper();
      await configHelper.loadConfig('assets/app_config.json');

      final appSettings = _getConfigSection(configHelper, 'appSettings');
      final uiConfig = _getConfigSection(configHelper, 'uiConfiguration');
      final splashConfig = _getConfigSection(configHelper, 'splashConfiguration');
      final apiConfig = _getConfigSection(configHelper, 'apiConfiguration');

      stateChanger(ConfigState.loaded(
        config: {
          'appSettings': appSettings,
          'uiConfiguration': uiConfig,
          'splashConfiguration': splashConfig,
          'apiConfiguration': apiConfig,
        },
      ));
    } catch (e) {
      stateChanger(ConfigState.error(
        errorMessage: e.toString(),
      ));
    }
  }
}

