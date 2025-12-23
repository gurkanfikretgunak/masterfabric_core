// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:masterfabric_core/src/models/onboarding_models.dart' as _i736;
import 'package:masterfabric_core/src/views/account/cubit/account_cubit.dart'
    as _i924;
import 'package:masterfabric_core/src/views/auth/cubit/auth_cubit.dart'
    as _i282;
import 'package:masterfabric_core/src/views/empty_view/cubit/empty_view_cubit.dart'
    as _i347;
import 'package:masterfabric_core/src/views/error_handling/cubit/error_handling_cubit.dart'
    as _i730;
import 'package:masterfabric_core/src/views/image_detail/cubit/image_detail_cubit.dart'
    as _i534;
import 'package:masterfabric_core/src/views/info_bottom_sheet/cubit/info_bottom_sheet_cubit.dart'
    as _i728;
import 'package:masterfabric_core/src/views/loading/cubit/loading_cubit.dart'
    as _i188;
import 'package:masterfabric_core/src/views/onboarding/cubit/onboarding_cubit.dart'
    as _i1049;
import 'package:masterfabric_core/src/views/permissions/cubit/permissions_cubit.dart'
    as _i898;
import 'package:masterfabric_core/src/views/search/cubit/search_cubit.dart'
    as _i355;
import 'package:masterfabric_core/src/views/splash/cubit/splash_cubit.dart'
    as _i174;
import 'package:permission_handler/permission_handler.dart' as _i292;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i924.AccountCubit>(() => _i924.AccountCubit());
    gh.factory<_i282.AuthCubit>(() => _i282.AuthCubit());
    gh.factory<_i347.EmptyViewCubit>(() => _i347.EmptyViewCubit());
    gh.factory<_i730.ErrorHandlingCubit>(() => _i730.ErrorHandlingCubit());
    gh.factory<_i728.InfoBottomSheetCubit>(() => _i728.InfoBottomSheetCubit());
    gh.factory<_i188.LoadingCubit>(() => _i188.LoadingCubit());
    gh.factory<_i355.SearchCubit>(() => _i355.SearchCubit());
    gh.factory<_i174.SplashCubit>(() => _i174.SplashCubit());
    gh.factory<_i1049.OnboardingCubit>(
      () => _i1049.OnboardingCubit(config: gh<_i736.OnboardingConfig>()),
    );
    gh.factory<_i534.ImageDetailCubit>(
      () => _i534.ImageDetailCubit(imageUrl: gh<String>(), title: gh<String>()),
    );
    gh.factory<_i898.PermissionsCubit>(
      () => _i898.PermissionsCubit(permissions: gh<List<_i292.Permission>>()),
    );
    return this;
  }
}
