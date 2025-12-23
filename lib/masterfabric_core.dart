/// MasterFabric Core Package
/// 
/// Core utilities, base classes, and shared logic for the MasterFabric Flutter project.

// Base classes
export 'package:masterfabric_core/src/base/base_view_bloc.dart';
export 'package:masterfabric_core/src/base/base_view_cubit.dart';
export 'package:masterfabric_core/src/base/base_view_hydrated_cubit.dart';
export 'package:masterfabric_core/src/base/base_view_model.dart';
export 'package:masterfabric_core/src/base/base_view_model_cubit.dart';
export 'package:masterfabric_core/src/base/base_view_model_hydrated_cubit.dart';
export 'package:masterfabric_core/src/base/base_view_state.dart';
export 'package:masterfabric_core/src/base/master_view/master_app.dart';
export 'package:masterfabric_core/src/base/master_view/master_view.dart';
export 'package:masterfabric_core/src/base/master_view_cubit/master_view_cubit.dart';
export 'package:masterfabric_core/src/base/master_view_hydrated_cubit/master_view_hydrated_cubit.dart';
export 'package:masterfabric_core/src/base/widgets/master_scaffold_widget.dart';

// Helpers
export 'package:masterfabric_core/src/helper/auth_storage_helper.dart';
export 'package:masterfabric_core/src/helper/application_share_helper.dart';
export 'package:masterfabric_core/src/helper/asset_config_helper.dart';
export 'package:masterfabric_core/src/helper/datetime_helper.dart';
export 'package:masterfabric_core/src/helper/device_info_helper.dart';
export 'package:masterfabric_core/src/helper/double_extension_helper.dart';
export 'package:masterfabric_core/src/helper/file_download_helper.dart';
export 'package:masterfabric_core/src/helper/first_letter_capitalize_helper.dart';
export 'package:masterfabric_core/src/helper/grid_helper.dart';
export 'package:masterfabric_core/src/helper/local_notification_helper.dart';
export 'package:masterfabric_core/src/helper/local_storage/local_storage_helper.dart';
export 'package:masterfabric_core/src/helper/onboarding_helper.dart';
export 'package:masterfabric_core/src/helper/permission_handler_helper/permission_handler_helper.dart';
export 'package:masterfabric_core/src/helper/permission_handler_helper/abstract/permission_handler_base.dart';
export 'package:masterfabric_core/src/helper/permission_handler_helper/models/permission_models.dart';
export 'package:masterfabric_core/src/helper/price_info_currency_helper.dart';
export 'package:masterfabric_core/src/helper/spacer_helper.dart';
export 'package:masterfabric_core/src/helper/url_launcher_helper.dart';
export 'package:masterfabric_core/src/helper/web_viewer_helper.dart';
export 'package:masterfabric_core/src/helper/common_logger_helper/common_logger_helper.dart';

// Models
export 'package:masterfabric_core/src/models/empty_view_models.dart';
export 'package:masterfabric_core/src/models/error_handling_models.dart';
export 'package:masterfabric_core/src/models/info_models.dart';
export 'package:masterfabric_core/src/models/loading_models.dart';
export 'package:masterfabric_core/src/models/onboarding_models.dart';
export 'package:masterfabric_core/src/models/splash_models.dart';

// Layout
export 'package:masterfabric_core/src/layout/grid.dart';
export 'package:masterfabric_core/src/layout/spacer.dart';

// Views
export 'package:masterfabric_core/src/views/account/account_view.dart';
export 'package:masterfabric_core/src/views/account/cubit/account_cubit.dart';
export 'package:masterfabric_core/src/views/account/cubit/account_state.dart';
export 'package:masterfabric_core/src/views/auth/auth_view.dart';
export 'package:masterfabric_core/src/views/auth/cubit/auth_cubit.dart';
export 'package:masterfabric_core/src/views/auth/cubit/auth_state.dart';
export 'package:masterfabric_core/src/views/empty_view/empty_view.dart';
export 'package:masterfabric_core/src/views/empty_view/cubit/empty_view_cubit.dart';
export 'package:masterfabric_core/src/views/empty_view/cubit/empty_view_state.dart';
export 'package:masterfabric_core/src/views/error_handling/error_handling_view.dart';
export 'package:masterfabric_core/src/views/error_handling/cubit/error_handling_cubit.dart';
export 'package:masterfabric_core/src/views/error_handling/cubit/error_handling_state.dart';
export 'package:masterfabric_core/src/views/image_detail/image_detail_view.dart';
export 'package:masterfabric_core/src/views/image_detail/cubit/image_detail_cubit.dart';
export 'package:masterfabric_core/src/views/image_detail/cubit/image_detail_state.dart';
export 'package:masterfabric_core/src/views/info_bottom_sheet/info_bottom_sheet_view.dart';
export 'package:masterfabric_core/src/views/info_bottom_sheet/cubit/info_bottom_sheet_cubit.dart';
export 'package:masterfabric_core/src/views/info_bottom_sheet/cubit/info_bottom_sheet_state.dart';
export 'package:masterfabric_core/src/views/loading/loading_view.dart';
export 'package:masterfabric_core/src/views/loading/cubit/loading_cubit.dart';
export 'package:masterfabric_core/src/views/loading/cubit/loading_state.dart';
export 'package:masterfabric_core/src/views/onboarding/onboarding_view.dart';
export 'package:masterfabric_core/src/views/onboarding/cubit/onboarding_cubit.dart';
export 'package:masterfabric_core/src/views/onboarding/cubit/onboarding_state.dart';
export 'package:masterfabric_core/src/views/permissions/permissions_view.dart';
export 'package:masterfabric_core/src/views/permissions/cubit/permissions_cubit.dart';
export 'package:masterfabric_core/src/views/permissions/cubit/permissions_state.dart';
export 'package:masterfabric_core/src/views/routes.dart';
export 'package:masterfabric_core/src/views/search/search_view.dart';
export 'package:masterfabric_core/src/views/search/cubit/search_cubit.dart';
export 'package:masterfabric_core/src/views/search/cubit/search_state.dart';
export 'package:masterfabric_core/src/views/splash/splash_view.dart';
export 'package:masterfabric_core/src/views/splash/cubit/splash_cubit.dart';
export 'package:masterfabric_core/src/views/splash/cubit/splash_state.dart';

// Resources (will be generated)
export 'package:masterfabric_core/src/resources/resources.g.dart';

// DI
export 'package:masterfabric_core/src/di/config/injection.dart';

// Components (if available)
// Note: LoadingType, LoadingCubit, LoadingState are hidden to avoid conflicts with masterfabric_core's own implementations
// Export osmea_components - layout types are defined in master_scaffold_widget.dart
export 'package:osmea_components/osmea_components.dart' 
    hide LoadingType, LoadingCubit, LoadingState;