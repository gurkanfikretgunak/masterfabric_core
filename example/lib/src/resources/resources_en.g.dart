///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'resources.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final resources = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);
	late final TranslationsAccountEn account = TranslationsAccountEn._(_root);
	late final TranslationsOnboardingEn onboarding = TranslationsOnboardingEn._(_root);
	late final TranslationsPermissionsEn permissions = TranslationsPermissionsEn._(_root);
	late final TranslationsSearchEn search = TranslationsSearchEn._(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn._(_root);
	late final TranslationsSplashEn splash = TranslationsSplashEn._(_root);
	late final TranslationsEmptyViewEn empty_view = TranslationsEmptyViewEn._(_root);
	late final TranslationsLoadingEn loading = TranslationsLoadingEn._(_root);
	late final TranslationsImageDetailEn image_detail = TranslationsImageDetailEn._(_root);
	late final TranslationsHomeEn home = TranslationsHomeEn._(_root);
	late final TranslationsProductsEn products = TranslationsProductsEn._(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsHelpersEn helpers = TranslationsHelpersEn._(_root);
	late final TranslationsAppConfigEn app_config = TranslationsAppConfigEn._(_root);
	late final TranslationsDeviceInfoEn device_info = TranslationsDeviceInfoEn._(_root);
	late final TranslationsForceUpdateEn force_update = TranslationsForceUpdateEn._(_root);
	late final TranslationsPushNotificationEn push_notification = TranslationsPushNotificationEn._(_root);
	late final TranslationsStorageEn storage = TranslationsStorageEn._(_root);
	late final TranslationsHiveceStorageEn hivece_storage = TranslationsHiveceStorageEn._(_root);
	late final TranslationsShareEn share = TranslationsShareEn._(_root);
	late final TranslationsDownloadEn download = TranslationsDownloadEn._(_root);
	late final TranslationsDatetimeEn datetime = TranslationsDatetimeEn._(_root);
	late final TranslationsUrlLauncherEn url_launcher = TranslationsUrlLauncherEn._(_root);
	late final TranslationsSvgHelperEn svg_helper = TranslationsSvgHelperEn._(_root);
	late final TranslationsWebViewerEn web_viewer = TranslationsWebViewerEn._(_root);
	late final TranslationsPermissionsHelperEn permissions_helper = TranslationsPermissionsHelperEn._(_root);
	late final TranslationsPackageInfoEn package_info = TranslationsPackageInfoEn._(_root);
	late final TranslationsSkeletonEn skeleton = TranslationsSkeletonEn._(_root);
	late final TranslationsSettingsWidgetsEn settings_widgets = TranslationsSettingsWidgetsEn._(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'OK'
	String get ok => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? 'OK';

	/// en: 'Cancel'
	String get cancel => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? 'Cancel';

	/// en: 'Yes'
	String get yes => TranslationOverrides.string(_root.$meta, 'common.yes', {}) ?? 'Yes';

	/// en: 'No'
	String get no => TranslationOverrides.string(_root.$meta, 'common.no', {}) ?? 'No';

	/// en: 'Save'
	String get save => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? 'Save';

	/// en: 'Delete'
	String get delete => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? 'Delete';

	/// en: 'Edit'
	String get edit => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? 'Edit';

	/// en: 'Close'
	String get close => TranslationOverrides.string(_root.$meta, 'common.close', {}) ?? 'Close';

	/// en: 'Back'
	String get back => TranslationOverrides.string(_root.$meta, 'common.back', {}) ?? 'Back';

	/// en: 'Next'
	String get next => TranslationOverrides.string(_root.$meta, 'common.next', {}) ?? 'Next';

	/// en: 'Previous'
	String get previous => TranslationOverrides.string(_root.$meta, 'common.previous', {}) ?? 'Previous';

	/// en: 'Done'
	String get done => TranslationOverrides.string(_root.$meta, 'common.done', {}) ?? 'Done';

	/// en: 'Loading...'
	String get loading => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? 'Loading...';

	/// en: 'Error'
	String get error => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? 'Error';

	/// en: 'Success'
	String get success => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? 'Success';

	/// en: 'Dismiss'
	String get dismiss => TranslationOverrides.string(_root.$meta, 'common.dismiss', {}) ?? 'Dismiss';

	/// en: 'Grant'
	String get grant => TranslationOverrides.string(_root.$meta, 'common.grant', {}) ?? 'Grant';

	/// en: 'Undo'
	String get undo => TranslationOverrides.string(_root.$meta, 'common.undo', {}) ?? 'Undo';

	/// en: 'Retry'
	String get retry => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? 'Retry';

	/// en: 'Refresh'
	String get refresh => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? 'Refresh';

	/// en: 'Initialize'
	String get initialize => TranslationOverrides.string(_root.$meta, 'common.initialize', {}) ?? 'Initialize';

	/// en: 'Set'
	String get set => TranslationOverrides.string(_root.$meta, 'common.set', {}) ?? 'Set';

	/// en: 'Subscribe'
	String get subscribe => TranslationOverrides.string(_root.$meta, 'common.subscribe', {}) ?? 'Subscribe';

	/// en: 'User'
	String get user => TranslationOverrides.string(_root.$meta, 'common.user', {}) ?? 'User';
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Authentication'
	String get title => TranslationOverrides.string(_root.$meta, 'auth.title', {}) ?? 'Authentication';

	/// en: 'Sign In'
	String get sign_in => TranslationOverrides.string(_root.$meta, 'auth.sign_in', {}) ?? 'Sign In';

	/// en: 'Sign Up'
	String get sign_up => TranslationOverrides.string(_root.$meta, 'auth.sign_up', {}) ?? 'Sign Up';

	/// en: 'Email'
	String get email => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? 'Email';

	/// en: 'Password'
	String get password => TranslationOverrides.string(_root.$meta, 'auth.password', {}) ?? 'Password';

	/// en: 'Forgot Password?'
	String get forgot_password => TranslationOverrides.string(_root.$meta, 'auth.forgot_password', {}) ?? 'Forgot Password?';

	/// en: 'Remember me'
	String get remember_me => TranslationOverrides.string(_root.$meta, 'auth.remember_me', {}) ?? 'Remember me';

	/// en: 'Sign in failed'
	String get sign_in_failed => TranslationOverrides.string(_root.$meta, 'auth.sign_in_failed', {}) ?? 'Sign in failed';

	/// en: 'Sign up failed'
	String get sign_up_failed => TranslationOverrides.string(_root.$meta, 'auth.sign_up_failed', {}) ?? 'Sign up failed';
}

// Path: account
class TranslationsAccountEn {
	TranslationsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account'
	String get title => TranslationOverrides.string(_root.$meta, 'account.title', {}) ?? 'Account';

	/// en: 'Profile'
	String get profile => TranslationOverrides.string(_root.$meta, 'account.profile', {}) ?? 'Profile';

	/// en: 'Settings'
	String get settings => TranslationOverrides.string(_root.$meta, 'account.settings', {}) ?? 'Settings';

	/// en: 'Logout'
	String get logout => TranslationOverrides.string(_root.$meta, 'account.logout', {}) ?? 'Logout';

	/// en: 'Sign Out'
	String get sign_out => TranslationOverrides.string(_root.$meta, 'account.sign_out', {}) ?? 'Sign Out';
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skip'
	String get skip => TranslationOverrides.string(_root.$meta, 'onboarding.skip', {}) ?? 'Skip';

	/// en: 'Get Started'
	String get get_started => TranslationOverrides.string(_root.$meta, 'onboarding.get_started', {}) ?? 'Get Started';

	/// en: 'Previous'
	String get previous => TranslationOverrides.string(_root.$meta, 'onboarding.previous', {}) ?? 'Previous';

	/// en: 'Next'
	String get next => TranslationOverrides.string(_root.$meta, 'onboarding.next', {}) ?? 'Next';

	/// en: 'No onboarding pages configured'
	String get no_pages_configured => TranslationOverrides.string(_root.$meta, 'onboarding.no_pages_configured', {}) ?? 'No onboarding pages configured';
}

// Path: permissions
class TranslationsPermissionsEn {
	TranslationsPermissionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Permissions Required'
	String get title => TranslationOverrides.string(_root.$meta, 'permissions.title', {}) ?? 'Permissions Required';

	/// en: 'This app needs certain permissions to function properly.'
	String get description => TranslationOverrides.string(_root.$meta, 'permissions.description', {}) ?? 'This app needs certain permissions to function properly.';

	/// en: 'Grant'
	String get grant => TranslationOverrides.string(_root.$meta, 'permissions.grant', {}) ?? 'Grant';

	/// en: 'Grant All Permissions'
	String get grant_all => TranslationOverrides.string(_root.$meta, 'permissions.grant_all', {}) ?? 'Grant All Permissions';

	/// en: 'Permission Denied'
	String get denied => TranslationOverrides.string(_root.$meta, 'permissions.denied', {}) ?? 'Permission Denied';

	/// en: 'Request Permissions'
	String get request_permissions => TranslationOverrides.string(_root.$meta, 'permissions.request_permissions', {}) ?? 'Request Permissions';
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Search...'
	String get hint => TranslationOverrides.string(_root.$meta, 'search.hint', {}) ?? 'Search...';

	/// en: 'No results found'
	String get no_results => TranslationOverrides.string(_root.$meta, 'search.no_results', {}) ?? 'No results found';
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Something went wrong. Please try again.'
	String get generic => TranslationOverrides.string(_root.$meta, 'error.generic', {}) ?? 'Something went wrong. Please try again.';

	/// en: 'Network error. Please check your connection.'
	String get network => TranslationOverrides.string(_root.$meta, 'error.network', {}) ?? 'Network error. Please check your connection.';

	/// en: 'You are not authorized to perform this action.'
	String get unauthorized => TranslationOverrides.string(_root.$meta, 'error.unauthorized', {}) ?? 'You are not authorized to perform this action.';

	/// en: 'Error Code'
	String get error_code => TranslationOverrides.string(_root.$meta, 'error.error_code', {}) ?? 'Error Code';
}

// Path: splash
class TranslationsSplashEn {
	TranslationsSplashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get loading => TranslationOverrides.string(_root.$meta, 'splash.loading', {}) ?? 'Loading...';

	/// en: 'Webview'
	String get webview => TranslationOverrides.string(_root.$meta, 'splash.webview', {}) ?? 'Webview';

	/// en: 'Error occurred'
	String get error => TranslationOverrides.string(_root.$meta, 'splash.error', {}) ?? 'Error occurred';

	/// en: 'Under maintenance'
	String get maintenance => TranslationOverrides.string(_root.$meta, 'splash.maintenance', {}) ?? 'Under maintenance';

	/// en: 'No data available'
	String get empty => TranslationOverrides.string(_root.$meta, 'splash.empty', {}) ?? 'No data available';

	/// en: 'Unauthorized'
	String get unauthorized => TranslationOverrides.string(_root.$meta, 'splash.unauthorized', {}) ?? 'Unauthorized';

	/// en: 'Request timeout'
	String get timeout => TranslationOverrides.string(_root.$meta, 'splash.timeout', {}) ?? 'Request timeout';
}

// Path: empty_view
class TranslationsEmptyViewEn {
	TranslationsEmptyViewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No content available'
	String get title => TranslationOverrides.string(_root.$meta, 'empty_view.title', {}) ?? 'No content available';

	/// en: 'There's nothing to show here.'
	String get description => TranslationOverrides.string(_root.$meta, 'empty_view.description', {}) ?? 'There\'s nothing to show here.';
}

// Path: loading
class TranslationsLoadingEn {
	TranslationsLoadingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get loading => TranslationOverrides.string(_root.$meta, 'loading.loading', {}) ?? 'Loading...';
}

// Path: image_detail
class TranslationsImageDetailEn {
	TranslationsImageDetailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Image'
	String get title => TranslationOverrides.string(_root.$meta, 'image_detail.title', {}) ?? 'Image';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'MasterFabric Core'
	String get title => TranslationOverrides.string(_root.$meta, 'home.title', {}) ?? 'MasterFabric Core';

	/// en: 'A comprehensive Flutter framework for building scalable, maintainable mobile applications with pre-built components, state management patterns, and utility helpers.'
	String get description => TranslationOverrides.string(_root.$meta, 'home.description', {}) ?? 'A comprehensive Flutter framework for building scalable, maintainable mobile applications with pre-built components, state management patterns, and utility helpers.';

	/// en: 'Home view is hidden'
	String get home_view_hidden => TranslationOverrides.string(_root.$meta, 'home.home_view_hidden', {}) ?? 'Home view is hidden';

	/// en: 'Show Home View'
	String get show_home_view => TranslationOverrides.string(_root.$meta, 'home.show_home_view', {}) ?? 'Show Home View';

	/// en: 'Quick Navigation'
	String get quick_navigation => TranslationOverrides.string(_root.$meta, 'home.quick_navigation', {}) ?? 'Quick Navigation';

	/// en: 'Architecture'
	String get architecture => TranslationOverrides.string(_root.$meta, 'home.architecture', {}) ?? 'Architecture';

	/// en: 'Core Features'
	String get core_features => TranslationOverrides.string(_root.$meta, 'home.core_features', {}) ?? 'Core Features';

	/// en: 'Helper Modules'
	String get helper_modules => TranslationOverrides.string(_root.$meta, 'home.helper_modules', {}) ?? 'Helper Modules';

	/// en: 'Getting Started'
	String get getting_started => TranslationOverrides.string(_root.$meta, 'home.getting_started', {}) ?? 'Getting Started';

	/// en: 'Products'
	String get products => TranslationOverrides.string(_root.$meta, 'home.products', {}) ?? 'Products';

	/// en: 'Sample product list with search'
	String get products_subtitle => TranslationOverrides.string(_root.$meta, 'home.products_subtitle', {}) ?? 'Sample product list with search';

	/// en: 'Profile'
	String get profile => TranslationOverrides.string(_root.$meta, 'home.profile', {}) ?? 'Profile';

	/// en: 'User profile with device info'
	String get profile_subtitle => TranslationOverrides.string(_root.$meta, 'home.profile_subtitle', {}) ?? 'User profile with device info';

	/// en: 'Helper Cases'
	String get helper_cases => TranslationOverrides.string(_root.$meta, 'home.helper_cases', {}) ?? 'Helper Cases';

	/// en: 'Explore all utility helpers'
	String get helper_cases_subtitle => TranslationOverrides.string(_root.$meta, 'home.helper_cases_subtitle', {}) ?? 'Explore all utility helpers';

	/// en: 'MasterViewCubit'
	String get masterview_cubit => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit', {}) ?? 'MasterViewCubit';

	/// en: 'Base view class with integrated Cubit state management, lifecycle hooks, and common UI patterns.'
	String get masterview_cubit_desc => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit_desc', {}) ?? 'Base view class with integrated Cubit state management, lifecycle hooks, and common UI patterns.';

	/// en: 'BaseViewModelCubit'
	String get base_viewmodel_cubit => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit', {}) ?? 'BaseViewModelCubit';

	/// en: 'Extended Cubit with stateChanger pattern for clean state transitions and business logic separation.'
	String get base_viewmodel_cubit_desc => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit_desc', {}) ?? 'Extended Cubit with stateChanger pattern for clean state transitions and business logic separation.';

	/// en: 'Injectable DI'
	String get injectable_di => TranslationOverrides.string(_root.$meta, 'home.injectable_di', {}) ?? 'Injectable DI';

	/// en: 'Automatic dependency injection with GetIt and injectable annotations for clean service resolution.'
	String get injectable_di_desc => TranslationOverrides.string(_root.$meta, 'home.injectable_di_desc', {}) ?? 'Automatic dependency injection with GetIt and injectable annotations for clean service resolution.';

	/// en: 'GoRouter Navigation'
	String get gorouter_navigation => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation', {}) ?? 'GoRouter Navigation';

	/// en: 'Declarative routing with type-safe navigation, deep linking, and route guards support.'
	String get gorouter_navigation_desc => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation_desc', {}) ?? 'Declarative routing with type-safe navigation, deep linking, and route guards support.';

	/// en: 'State Management'
	String get state_management => TranslationOverrides.string(_root.$meta, 'home.state_management', {}) ?? 'State Management';

	/// en: 'Cubit, HydratedCubit, BLoC patterns'
	String get state_management_desc => TranslationOverrides.string(_root.$meta, 'home.state_management_desc', {}) ?? 'Cubit, HydratedCubit, BLoC patterns';

	/// en: 'Pre-built Views'
	String get prebuilt_views => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views', {}) ?? 'Pre-built Views';

	/// en: 'Splash, Auth, Onboarding, Error, Empty'
	String get prebuilt_views_desc => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views_desc', {}) ?? 'Splash, Auth, Onboarding, Error, Empty';

	/// en: 'Storage Solutions'
	String get storage_solutions => TranslationOverrides.string(_root.$meta, 'home.storage_solutions', {}) ?? 'Storage Solutions';

	/// en: 'SharedPreferences, HiveCE, Secure Storage'
	String get storage_solutions_desc => TranslationOverrides.string(_root.$meta, 'home.storage_solutions_desc', {}) ?? 'SharedPreferences, HiveCE, Secure Storage';

	/// en: 'Theme System'
	String get theme_system => TranslationOverrides.string(_root.$meta, 'home.theme_system', {}) ?? 'Theme System';

	/// en: 'Light/Dark themes, custom styling'
	String get theme_system_desc => TranslationOverrides.string(_root.$meta, 'home.theme_system_desc', {}) ?? 'Light/Dark themes, custom styling';

	/// en: 'Localization'
	String get localization => TranslationOverrides.string(_root.$meta, 'home.localization', {}) ?? 'Localization';

	/// en: 'i18n support with slang'
	String get localization_desc => TranslationOverrides.string(_root.$meta, 'home.localization_desc', {}) ?? 'i18n support with slang';

	/// en: 'Push Notifications'
	String get push_notifications => TranslationOverrides.string(_root.$meta, 'home.push_notifications', {}) ?? 'Push Notifications';

	/// en: 'OneSignal & Firebase FCM integration'
	String get push_notifications_desc => TranslationOverrides.string(_root.$meta, 'home.push_notifications_desc', {}) ?? 'OneSignal & Firebase FCM integration';

	/// en: 'WebViewer'
	String get webviewer => TranslationOverrides.string(_root.$meta, 'home.webviewer', {}) ?? 'WebViewer';

	/// en: 'HTML rendering & WebView support'
	String get webviewer_desc => TranslationOverrides.string(_root.$meta, 'home.webviewer_desc', {}) ?? 'HTML rendering & WebView support';

	/// en: 'SVG Helper'
	String get svg_helper => TranslationOverrides.string(_root.$meta, 'home.svg_helper', {}) ?? 'SVG Helper';

	/// en: 'Asset, network, string SVG sources'
	String get svg_helper_desc => TranslationOverrides.string(_root.$meta, 'home.svg_helper_desc', {}) ?? 'Asset, network, string SVG sources';

	/// en: 'Force Update'
	String get force_update => TranslationOverrides.string(_root.$meta, 'home.force_update', {}) ?? 'Force Update';

	/// en: 'Version check & store redirect'
	String get force_update_desc => TranslationOverrides.string(_root.$meta, 'home.force_update_desc', {}) ?? 'Version check & store redirect';

	/// en: 'Skeleton Loading'
	String get skeleton_loading => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading', {}) ?? 'Skeleton Loading';

	/// en: '10 animation styles for loading states'
	String get skeleton_loading_desc => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading_desc', {}) ?? '10 animation styles for loading states';

	/// en: 'Utilities'
	String get utilities => TranslationOverrides.string(_root.$meta, 'home.utilities', {}) ?? 'Utilities';

	/// en: 'DateTime, URL, Share, Download, Permissions'
	String get utilities_desc => TranslationOverrides.string(_root.$meta, 'home.utilities_desc', {}) ?? 'DateTime, URL, Share, Download, Permissions';

	/// en: 'Add dependency'
	String get add_dependency => TranslationOverrides.string(_root.$meta, 'home.add_dependency', {}) ?? 'Add dependency';

	/// en: 'Initialize in main.dart'
	String get initialize_main => TranslationOverrides.string(_root.$meta, 'home.initialize_main', {}) ?? 'Initialize in main.dart';

	/// en: 'Create views extending MasterViewCubit'
	String get create_views => TranslationOverrides.string(_root.$meta, 'home.create_views', {}) ?? 'Create views extending MasterViewCubit';

	/// en: 'Configure routes with GoRouter'
	String get configure_routes => TranslationOverrides.string(_root.$meta, 'home.configure_routes', {}) ?? 'Configure routes with GoRouter';

	/// en: 'Built with MasterFabric Core'
	String get built_with => TranslationOverrides.string(_root.$meta, 'home.built_with', {}) ?? 'Built with MasterFabric Core';

	/// en: 'Flutter Framework for Enterprise Apps'
	String get flutter_framework => TranslationOverrides.string(_root.$meta, 'home.flutter_framework', {}) ?? 'Flutter Framework for Enterprise Apps';
}

// Path: products
class TranslationsProductsEn {
	TranslationsProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Products'
	String get title => TranslationOverrides.string(_root.$meta, 'products.title', {}) ?? 'Products';

	/// en: 'Products view is hidden'
	String get products_view_hidden => TranslationOverrides.string(_root.$meta, 'products.products_view_hidden', {}) ?? 'Products view is hidden';

	/// en: 'Show Products View'
	String get show_products_view => TranslationOverrides.string(_root.$meta, 'products.show_products_view', {}) ?? 'Show Products View';

	/// en: 'No products'
	String get no_products => TranslationOverrides.string(_root.$meta, 'products.no_products', {}) ?? 'No products';

	/// en: 'No results'
	String get no_results => TranslationOverrides.string(_root.$meta, 'products.no_results', {}) ?? 'No results';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get title => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? 'Profile';

	/// en: 'Profile view is hidden'
	String get profile_view_hidden => TranslationOverrides.string(_root.$meta, 'profile.profile_view_hidden', {}) ?? 'Profile view is hidden';

	/// en: 'Show Profile View'
	String get show_profile_view => TranslationOverrides.string(_root.$meta, 'profile.show_profile_view', {}) ?? 'Show Profile View';

	/// en: 'Device'
	String get device => TranslationOverrides.string(_root.$meta, 'profile.device', {}) ?? 'Device';

	/// en: 'Actions'
	String get actions => TranslationOverrides.string(_root.$meta, 'profile.actions', {}) ?? 'Actions';

	/// en: 'platform'
	String get platform => TranslationOverrides.string(_root.$meta, 'profile.platform', {}) ?? 'platform';

	/// en: 'device_id'
	String get device_id => TranslationOverrides.string(_root.$meta, 'profile.device_id', {}) ?? 'device_id';

	/// en: 'manufacturer'
	String get manufacturer => TranslationOverrides.string(_root.$meta, 'profile.manufacturer', {}) ?? 'manufacturer';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Settings';

	/// en: 'Theme Mode'
	String get theme_mode => TranslationOverrides.string(_root.$meta, 'settings.theme_mode', {}) ?? 'Theme Mode';

	/// en: 'Font Size'
	String get font_size => TranslationOverrides.string(_root.$meta, 'settings.font_size', {}) ?? 'Font Size';

	/// en: 'Colors'
	String get colors => TranslationOverrides.string(_root.$meta, 'settings.colors', {}) ?? 'Colors';

	/// en: 'View Visibility'
	String get view_visibility => TranslationOverrides.string(_root.$meta, 'settings.view_visibility', {}) ?? 'View Visibility';

	/// en: 'Icons'
	String get icons => TranslationOverrides.string(_root.$meta, 'settings.icons', {}) ?? 'Icons';

	/// en: 'Permissions'
	String get permissions => TranslationOverrides.string(_root.$meta, 'settings.permissions', {}) ?? 'Permissions';

	/// en: 'Manage app permissions and runtime access'
	String get manage_permissions => TranslationOverrides.string(_root.$meta, 'settings.manage_permissions', {}) ?? 'Manage app permissions and runtime access';

	/// en: 'Request permissions again'
	String get request_permissions_again => TranslationOverrides.string(_root.$meta, 'settings.request_permissions_again', {}) ?? 'Request permissions again';

	/// en: 'Open app settings'
	String get open_app_settings => TranslationOverrides.string(_root.$meta, 'settings.open_app_settings', {}) ?? 'Open app settings';

	/// en: 'Language'
	String get language => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? 'Language';

	/// en: 'Reset to Defaults'
	String get reset_to_defaults => TranslationOverrides.string(_root.$meta, 'settings.reset_to_defaults', {}) ?? 'Reset to Defaults';

	/// en: 'Restore all theme settings'
	String get restore_theme_settings => TranslationOverrides.string(_root.$meta, 'settings.restore_theme_settings', {}) ?? 'Restore all theme settings';

	/// en: 'Light'
	String get light => TranslationOverrides.string(_root.$meta, 'settings.light', {}) ?? 'Light';

	/// en: 'Dark'
	String get dark => TranslationOverrides.string(_root.$meta, 'settings.dark', {}) ?? 'Dark';

	/// en: 'English'
	String get english => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? 'English';

	/// en: 'Turkish'
	String get turkish => TranslationOverrides.string(_root.$meta, 'settings.turkish', {}) ?? 'Turkish';

	/// en: 'Spanish'
	String get spanish => TranslationOverrides.string(_root.$meta, 'settings.spanish', {}) ?? 'Spanish';
}

// Path: helpers
class TranslationsHelpersEn {
	TranslationsHelpersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Helpers'
	String get title => TranslationOverrides.string(_root.$meta, 'helpers.title', {}) ?? 'Helpers';

	/// en: 'Core Utilities'
	String get core_utilities => TranslationOverrides.string(_root.$meta, 'helpers.core_utilities', {}) ?? 'Core Utilities';

	/// en: 'Device Info'
	String get device_info => TranslationOverrides.string(_root.$meta, 'helpers.device_info', {}) ?? 'Device Info';

	/// en: 'Local Storage'
	String get local_storage => TranslationOverrides.string(_root.$meta, 'helpers.local_storage', {}) ?? 'Local Storage';

	/// en: 'HiveCE'
	String get hivece => TranslationOverrides.string(_root.$meta, 'helpers.hivece', {}) ?? 'HiveCE';

	/// en: 'Date & Time'
	String get date_time => TranslationOverrides.string(_root.$meta, 'helpers.date_time', {}) ?? 'Date & Time';

	/// en: 'URL Launcher'
	String get url_launcher => TranslationOverrides.string(_root.$meta, 'helpers.url_launcher', {}) ?? 'URL Launcher';

	/// en: 'Permissions'
	String get permissions => TranslationOverrides.string(_root.$meta, 'helpers.permissions', {}) ?? 'Permissions';

	/// en: 'Share'
	String get share => TranslationOverrides.string(_root.$meta, 'helpers.share', {}) ?? 'Share';

	/// en: 'File Download'
	String get file_download => TranslationOverrides.string(_root.$meta, 'helpers.file_download', {}) ?? 'File Download';

	/// en: 'App Config'
	String get app_config => TranslationOverrides.string(_root.$meta, 'helpers.app_config', {}) ?? 'App Config';

	/// en: 'Package Info'
	String get package_info => TranslationOverrides.string(_root.$meta, 'helpers.package_info', {}) ?? 'Package Info';

	/// en: 'SVG Helper'
	String get svg_helper => TranslationOverrides.string(_root.$meta, 'helpers.svg_helper', {}) ?? 'SVG Helper';

	/// en: 'Web Viewer'
	String get web_viewer => TranslationOverrides.string(_root.$meta, 'helpers.web_viewer', {}) ?? 'Web Viewer';

	/// en: 'Push Notifications'
	String get push_notifications => TranslationOverrides.string(_root.$meta, 'helpers.push_notifications', {}) ?? 'Push Notifications';

	/// en: 'Force Update'
	String get force_update => TranslationOverrides.string(_root.$meta, 'helpers.force_update', {}) ?? 'Force Update';

	/// en: 'Skeleton Loading'
	String get skeleton_loading => TranslationOverrides.string(_root.$meta, 'helpers.skeleton_loading', {}) ?? 'Skeleton Loading';
}

// Path: app_config
class TranslationsAppConfigEn {
	TranslationsAppConfigEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'App Config'
	String get title => TranslationOverrides.string(_root.$meta, 'app_config.title', {}) ?? 'App Config';

	/// en: 'appSettings'
	String get app_settings => TranslationOverrides.string(_root.$meta, 'app_config.app_settings', {}) ?? 'appSettings';

	/// en: 'uiConfiguration'
	String get ui_configuration => TranslationOverrides.string(_root.$meta, 'app_config.ui_configuration', {}) ?? 'uiConfiguration';

	/// en: 'splashConfiguration'
	String get splash_configuration => TranslationOverrides.string(_root.$meta, 'app_config.splash_configuration', {}) ?? 'splashConfiguration';

	/// en: 'apiConfiguration'
	String get api_configuration => TranslationOverrides.string(_root.$meta, 'app_config.api_configuration', {}) ?? 'apiConfiguration';

	/// en: 'storageConfiguration'
	String get storage_configuration => TranslationOverrides.string(_root.$meta, 'app_config.storage_configuration', {}) ?? 'storageConfiguration';

	/// en: 'null'
	String get null_value => TranslationOverrides.string(_root.$meta, 'app_config.null_value', {}) ?? 'null';

	/// en: 'items'
	String get items => TranslationOverrides.string(_root.$meta, 'app_config.items', {}) ?? 'items';

	/// en: 'keys'
	String get keys => TranslationOverrides.string(_root.$meta, 'app_config.keys', {}) ?? 'keys';

	/// en: 'assets/app_config.json'
	String get config_file_path => TranslationOverrides.string(_root.$meta, 'app_config.config_file_path', {}) ?? 'assets/app_config.json';
}

// Path: device_info
class TranslationsDeviceInfoEn {
	TranslationsDeviceInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Device Info'
	String get title => TranslationOverrides.string(_root.$meta, 'device_info.title', {}) ?? 'Device Info';

	/// en: 'platform'
	String get platform => TranslationOverrides.string(_root.$meta, 'device_info.platform', {}) ?? 'platform';

	/// en: 'device_name'
	String get device_name => TranslationOverrides.string(_root.$meta, 'device_info.device_name', {}) ?? 'device_name';

	/// en: 'device_id'
	String get device_id => TranslationOverrides.string(_root.$meta, 'device_info.device_id', {}) ?? 'device_id';

	/// en: 'manufacturer'
	String get manufacturer => TranslationOverrides.string(_root.$meta, 'device_info.manufacturer', {}) ?? 'manufacturer';

	/// en: 'model'
	String get model => TranslationOverrides.string(_root.$meta, 'device_info.model', {}) ?? 'model';

	/// en: 'system_version'
	String get system_version => TranslationOverrides.string(_root.$meta, 'device_info.system_version', {}) ?? 'system_version';
}

// Path: force_update
class TranslationsForceUpdateEn {
	TranslationsForceUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Force Update'
	String get title => TranslationOverrides.string(_root.$meta, 'force_update.title', {}) ?? 'Force Update';

	/// en: 'Status'
	String get status => TranslationOverrides.string(_root.$meta, 'force_update.status', {}) ?? 'Status';

	/// en: 'Preview UI Type'
	String get preview_ui_type => TranslationOverrides.string(_root.$meta, 'force_update.preview_ui_type', {}) ?? 'Preview UI Type';

	/// en: 'Simulation Mode'
	String get simulation_mode => TranslationOverrides.string(_root.$meta, 'force_update.simulation_mode', {}) ?? 'Simulation Mode';

	/// en: 'Preview Update UI'
	String get preview_update_ui => TranslationOverrides.string(_root.$meta, 'force_update.preview_update_ui', {}) ?? 'Preview Update UI';

	/// en: 'Version Comparison'
	String get version_comparison => TranslationOverrides.string(_root.$meta, 'force_update.version_comparison', {}) ?? 'Version Comparison';

	/// en: 'Initialized'
	String get initialized => TranslationOverrides.string(_root.$meta, 'force_update.initialized', {}) ?? 'Initialized';

	/// en: 'Not Initialized'
	String get not_initialized => TranslationOverrides.string(_root.$meta, 'force_update.not_initialized', {}) ?? 'Not Initialized';

	/// en: 'App Version'
	String get app_version => TranslationOverrides.string(_root.$meta, 'force_update.app_version', {}) ?? 'App Version';

	/// en: 'Check Update'
	String get check_update => TranslationOverrides.string(_root.$meta, 'force_update.check_update', {}) ?? 'Check Update';

	/// en: 'Open Store'
	String get open_store => TranslationOverrides.string(_root.$meta, 'force_update.open_store', {}) ?? 'Open Store';

	/// en: 'Alert Dialog'
	String get alert_dialog => TranslationOverrides.string(_root.$meta, 'force_update.alert_dialog', {}) ?? 'Alert Dialog';

	/// en: 'Bottom Sheet'
	String get bottom_sheet => TranslationOverrides.string(_root.$meta, 'force_update.bottom_sheet', {}) ?? 'Bottom Sheet';

	/// en: 'Full Screen'
	String get full_screen => TranslationOverrides.string(_root.$meta, 'force_update.full_screen', {}) ?? 'Full Screen';

	/// en: 'Compact dialog overlay'
	String get compact_dialog_overlay => TranslationOverrides.string(_root.$meta, 'force_update.compact_dialog_overlay', {}) ?? 'Compact dialog overlay';

	/// en: 'Modal from bottom'
	String get modal_from_bottom => TranslationOverrides.string(_root.$meta, 'force_update.modal_from_bottom', {}) ?? 'Modal from bottom';

	/// en: 'Blocking full page'
	String get blocking_full_page => TranslationOverrides.string(_root.$meta, 'force_update.blocking_full_page', {}) ?? 'Blocking full page';

	/// en: 'Use Simulation'
	String get use_simulation => TranslationOverrides.string(_root.$meta, 'force_update.use_simulation', {}) ?? 'Use Simulation';

	/// en: 'Current Version'
	String get current_version => TranslationOverrides.string(_root.$meta, 'force_update.current_version', {}) ?? 'Current Version';

	/// en: 'Latest Version'
	String get latest_version => TranslationOverrides.string(_root.$meta, 'force_update.latest_version', {}) ?? 'Latest Version';

	/// en: 'Minimum Version'
	String get minimum_version => TranslationOverrides.string(_root.$meta, 'force_update.minimum_version', {}) ?? 'Minimum Version';

	/// en: 'Tip: Set minimum > current for force update'
	String get simulation_tip => TranslationOverrides.string(_root.$meta, 'force_update.simulation_tip', {}) ?? 'Tip: Set minimum > current for force update';

	/// en: 'Optional Update'
	String get optional_update => TranslationOverrides.string(_root.$meta, 'force_update.optional_update', {}) ?? 'Optional Update';

	/// en: 'Show dismissible update prompt'
	String get optional_update_desc => TranslationOverrides.string(_root.$meta, 'force_update.optional_update_desc', {}) ?? 'Show dismissible update prompt';

	/// en: 'Recommended Update'
	String get recommended_update => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update', {}) ?? 'Recommended Update';

	/// en: 'Show recommended update prompt'
	String get recommended_update_desc => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update_desc', {}) ?? 'Show recommended update prompt';

	/// en: 'Show blocking update screen'
	String get force_update_desc => TranslationOverrides.string(_root.$meta, 'force_update.force_update_desc', {}) ?? 'Show blocking update screen';

	/// en: 'Version Comparator Examples'
	String get version_comparator_examples => TranslationOverrides.string(_root.$meta, 'force_update.version_comparator_examples', {}) ?? 'Version Comparator Examples';

	/// en: 'older'
	String get older => TranslationOverrides.string(_root.$meta, 'force_update.older', {}) ?? 'older';

	/// en: 'newer'
	String get newer => TranslationOverrides.string(_root.$meta, 'force_update.newer', {}) ?? 'newer';

	/// en: 'equal'
	String get equal => TranslationOverrides.string(_root.$meta, 'force_update.equal', {}) ?? 'equal';

	/// en: 'older (pre-release)'
	String get older_prerelease => TranslationOverrides.string(_root.$meta, 'force_update.older_prerelease', {}) ?? 'older (pre-release)';

	/// en: 'older (build)'
	String get older_build => TranslationOverrides.string(_root.$meta, 'force_update.older_build', {}) ?? 'older (build)';
}

// Path: push_notification
class TranslationsPushNotificationEn {
	TranslationsPushNotificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Push Notifications'
	String get title => TranslationOverrides.string(_root.$meta, 'push_notification.title', {}) ?? 'Push Notifications';

	/// en: 'Status'
	String get status => TranslationOverrides.string(_root.$meta, 'push_notification.status', {}) ?? 'Status';

	/// en: 'Active Providers'
	String get active_providers => TranslationOverrides.string(_root.$meta, 'push_notification.active_providers', {}) ?? 'Active Providers';

	/// en: 'Permissions'
	String get permissions => TranslationOverrides.string(_root.$meta, 'push_notification.permissions', {}) ?? 'Permissions';

	/// en: 'Device Tokens'
	String get device_tokens => TranslationOverrides.string(_root.$meta, 'push_notification.device_tokens', {}) ?? 'Device Tokens';

	/// en: 'Topic Subscriptions'
	String get topic_subscriptions => TranslationOverrides.string(_root.$meta, 'push_notification.topic_subscriptions', {}) ?? 'Topic Subscriptions';

	/// en: 'User Targeting'
	String get user_targeting => TranslationOverrides.string(_root.$meta, 'push_notification.user_targeting', {}) ?? 'User Targeting';

	/// en: 'Actions'
	String get actions => TranslationOverrides.string(_root.$meta, 'push_notification.actions', {}) ?? 'Actions';

	/// en: 'Initialized'
	String get initialized => TranslationOverrides.string(_root.$meta, 'push_notification.initialized', {}) ?? 'Initialized';

	/// en: 'Not Initialized'
	String get not_initialized => TranslationOverrides.string(_root.$meta, 'push_notification.not_initialized', {}) ?? 'Not Initialized';

	/// en: 'provider(s) active'
	String get providers_active => TranslationOverrides.string(_root.$meta, 'push_notification.providers_active', {}) ?? 'provider(s) active';

	/// en: 'Tap to initialize'
	String get tap_to_initialize => TranslationOverrides.string(_root.$meta, 'push_notification.tap_to_initialize', {}) ?? 'Tap to initialize';

	/// en: 'Initialize to see active providers'
	String get initialize_to_see_providers => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_providers', {}) ?? 'Initialize to see active providers';

	/// en: 'No providers configured'
	String get no_providers_configured => TranslationOverrides.string(_root.$meta, 'push_notification.no_providers_configured', {}) ?? 'No providers configured';

	/// en: 'Initialize to check permissions'
	String get initialize_to_check_permissions => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_check_permissions', {}) ?? 'Initialize to check permissions';

	/// en: 'Initialize to see device tokens'
	String get initialize_to_see_tokens => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_tokens', {}) ?? 'Initialize to see device tokens';

	/// en: 'No token'
	String get no_token => TranslationOverrides.string(_root.$meta, 'push_notification.no_token', {}) ?? 'No token';

	/// en: 'Token copied to clipboard'
	String get token_copied => TranslationOverrides.string(_root.$meta, 'push_notification.token_copied', {}) ?? 'Token copied to clipboard';

	/// en: 'Opt In'
	String get opt_in => TranslationOverrides.string(_root.$meta, 'push_notification.opt_in', {}) ?? 'Opt In';

	/// en: 'Opt Out'
	String get opt_out => TranslationOverrides.string(_root.$meta, 'push_notification.opt_out', {}) ?? 'Opt Out';

	/// en: 'Clear All Data'
	String get clear_all_data => TranslationOverrides.string(_root.$meta, 'push_notification.clear_all_data', {}) ?? 'Clear All Data';

	/// en: 'Enter topic name'
	String get enter_topic_name => TranslationOverrides.string(_root.$meta, 'push_notification.enter_topic_name', {}) ?? 'Enter topic name';

	/// en: 'Subscribe'
	String get subscribe => TranslationOverrides.string(_root.$meta, 'push_notification.subscribe', {}) ?? 'Subscribe';

	/// en: 'No topics subscribed'
	String get no_topics_subscribed => TranslationOverrides.string(_root.$meta, 'push_notification.no_topics_subscribed', {}) ?? 'No topics subscribed';

	/// en: 'Enter user ID'
	String get enter_user_id => TranslationOverrides.string(_root.$meta, 'push_notification.enter_user_id', {}) ?? 'Enter user ID';

	/// en: 'Set'
	String get set => TranslationOverrides.string(_root.$meta, 'push_notification.set', {}) ?? 'Set';

	/// en: 'Remove User ID (Logout)'
	String get remove_user_id => TranslationOverrides.string(_root.$meta, 'push_notification.remove_user_id', {}) ?? 'Remove User ID (Logout)';

	/// en: 'OneSignal'
	String get onesignal => TranslationOverrides.string(_root.$meta, 'push_notification.onesignal', {}) ?? 'OneSignal';

	/// en: 'Firebase'
	String get firebase => TranslationOverrides.string(_root.$meta, 'push_notification.firebase', {}) ?? 'Firebase';

	/// en: 'Custom'
	String get custom => TranslationOverrides.string(_root.$meta, 'push_notification.custom', {}) ?? 'Custom';
}

// Path: storage
class TranslationsStorageEn {
	TranslationsStorageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Local Storage'
	String get title => TranslationOverrides.string(_root.$meta, 'storage.title', {}) ?? 'Local Storage';

	/// en: 'String'
	String get string => TranslationOverrides.string(_root.$meta, 'storage.string', {}) ?? 'String';

	/// en: 'Int'
	String get int => TranslationOverrides.string(_root.$meta, 'storage.int', {}) ?? 'Int';

	/// en: 'Double'
	String get double => TranslationOverrides.string(_root.$meta, 'storage.double', {}) ?? 'Double';

	/// en: 'Bool'
	String get bool => TranslationOverrides.string(_root.$meta, 'storage.bool', {}) ?? 'Bool';

	/// en: 'key'
	String get key => TranslationOverrides.string(_root.$meta, 'storage.key', {}) ?? 'key';

	/// en: 'value'
	String get value => TranslationOverrides.string(_root.$meta, 'storage.value', {}) ?? 'value';

	/// en: 'true'
	String get true_value => TranslationOverrides.string(_root.$meta, 'storage.true_value', {}) ?? 'true';

	/// en: 'false'
	String get false_value => TranslationOverrides.string(_root.$meta, 'storage.false_value', {}) ?? 'false';
}

// Path: hivece_storage
class TranslationsHiveceStorageEn {
	TranslationsHiveceStorageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'HiveCE Storage'
	String get title => TranslationOverrides.string(_root.$meta, 'hivece_storage.title', {}) ?? 'HiveCE Storage';

	/// en: 'String'
	String get string => TranslationOverrides.string(_root.$meta, 'hivece_storage.string', {}) ?? 'String';

	/// en: 'Int'
	String get int => TranslationOverrides.string(_root.$meta, 'hivece_storage.int', {}) ?? 'Int';

	/// en: 'Double'
	String get double => TranslationOverrides.string(_root.$meta, 'hivece_storage.double', {}) ?? 'Double';

	/// en: 'Bool'
	String get bool => TranslationOverrides.string(_root.$meta, 'hivece_storage.bool', {}) ?? 'Bool';

	/// en: 'List<String>'
	String get list_string => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_string', {}) ?? 'List<String>';

	/// en: 'Get by Key'
	String get get_by_key => TranslationOverrides.string(_root.$meta, 'hivece_storage.get_by_key', {}) ?? 'Get by Key';

	/// en: 'All Items'
	String get all_items => TranslationOverrides.string(_root.$meta, 'hivece_storage.all_items', {}) ?? 'All Items';

	/// en: 'No items'
	String get no_items => TranslationOverrides.string(_root.$meta, 'hivece_storage.no_items', {}) ?? 'No items';

	/// en: 'key'
	String get key => TranslationOverrides.string(_root.$meta, 'hivece_storage.key', {}) ?? 'key';

	/// en: 'value'
	String get value => TranslationOverrides.string(_root.$meta, 'hivece_storage.value', {}) ?? 'value';

	/// en: 'enter key'
	String get enter_key => TranslationOverrides.string(_root.$meta, 'hivece_storage.enter_key', {}) ?? 'enter key';

	/// en: 'a, b, c'
	String get list_hint => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_hint', {}) ?? 'a, b, c';

	/// en: 'true'
	String get true_value => TranslationOverrides.string(_root.$meta, 'hivece_storage.true_value', {}) ?? 'true';

	/// en: 'false'
	String get false_value => TranslationOverrides.string(_root.$meta, 'hivece_storage.false_value', {}) ?? 'false';

	/// en: 'Get'
	String get get => TranslationOverrides.string(_root.$meta, 'hivece_storage.get', {}) ?? 'Get';
}

// Path: share
class TranslationsShareEn {
	TranslationsShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share'
	String get title => TranslationOverrides.string(_root.$meta, 'share.title', {}) ?? 'Share';

	/// en: 'Share File'
	String get share_file => TranslationOverrides.string(_root.$meta, 'share.share_file', {}) ?? 'Share File';

	/// en: 'Share Text'
	String get share_text => TranslationOverrides.string(_root.$meta, 'share.share_text', {}) ?? 'Share Text';

	/// en: 'Enter text'
	String get enter_text => TranslationOverrides.string(_root.$meta, 'share.enter_text', {}) ?? 'Enter text';
}

// Path: download
class TranslationsDownloadEn {
	TranslationsDownloadEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Download'
	String get title => TranslationOverrides.string(_root.$meta, 'download.title', {}) ?? 'Download';

	/// en: 'Download File'
	String get download_file => TranslationOverrides.string(_root.$meta, 'download.download_file', {}) ?? 'Download File';

	/// en: 'URL'
	String get url => TranslationOverrides.string(_root.$meta, 'download.url', {}) ?? 'URL';

	/// en: 'Filename'
	String get filename => TranslationOverrides.string(_root.$meta, 'download.filename', {}) ?? 'Filename';
}

// Path: datetime
class TranslationsDatetimeEn {
	TranslationsDatetimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'DateTime'
	String get title => TranslationOverrides.string(_root.$meta, 'datetime.title', {}) ?? 'DateTime';

	/// en: 'formatDate()'
	String get format_date => TranslationOverrides.string(_root.$meta, 'datetime.format_date', {}) ?? 'formatDate()';

	/// en: 'formatTime()'
	String get format_time => TranslationOverrides.string(_root.$meta, 'datetime.format_time', {}) ?? 'formatTime()';

	/// en: 'formatDateTime()'
	String get format_datetime => TranslationOverrides.string(_root.$meta, 'datetime.format_datetime', {}) ?? 'formatDateTime()';

	/// en: 'getRelativeTime()'
	String get get_relative_time => TranslationOverrides.string(_root.$meta, 'datetime.get_relative_time', {}) ?? 'getRelativeTime()';

	/// en: 'parseDate()'
	String get parse_date => TranslationOverrides.string(_root.$meta, 'datetime.parse_date', {}) ?? 'parseDate()';
}

// Path: url_launcher
class TranslationsUrlLauncherEn {
	TranslationsUrlLauncherEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'URL Launcher'
	String get title => TranslationOverrides.string(_root.$meta, 'url_launcher.title', {}) ?? 'URL Launcher';

	/// en: 'URL'
	String get url => TranslationOverrides.string(_root.$meta, 'url_launcher.url', {}) ?? 'URL';

	/// en: 'Phone'
	String get phone => TranslationOverrides.string(_root.$meta, 'url_launcher.phone', {}) ?? 'Phone';

	/// en: 'Email'
	String get email => TranslationOverrides.string(_root.$meta, 'url_launcher.email', {}) ?? 'Email';

	/// en: 'SMS'
	String get sms => TranslationOverrides.string(_root.$meta, 'url_launcher.sms', {}) ?? 'SMS';

	/// en: 'Launch'
	String get launch => TranslationOverrides.string(_root.$meta, 'url_launcher.launch', {}) ?? 'Launch';
}

// Path: svg_helper
class TranslationsSvgHelperEn {
	TranslationsSvgHelperEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'SVG Helper'
	String get title => TranslationOverrides.string(_root.$meta, 'svg_helper.title', {}) ?? 'SVG Helper';

	/// en: 'Asset SVG'
	String get asset_svg => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg', {}) ?? 'Asset SVG';

	/// en: 'Load SVG from assets folder'
	String get asset_svg_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg_desc', {}) ?? 'Load SVG from assets folder';

	/// en: 'Color Tinting'
	String get color_tinting => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting', {}) ?? 'Color Tinting';

	/// en: 'Change SVG color dynamically'
	String get color_tinting_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting_desc', {}) ?? 'Change SVG color dynamically';

	/// en: 'Size Variations'
	String get size_variations => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations', {}) ?? 'Size Variations';

	/// en: 'Different icon sizes'
	String get size_variations_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations_desc', {}) ?? 'Different icon sizes';

	/// en: 'SVG from String'
	String get svg_from_string => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string', {}) ?? 'SVG from String';

	/// en: 'Render SVG from raw string data'
	String get svg_from_string_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string_desc', {}) ?? 'Render SVG from raw string data';

	/// en: 'Themed Icon'
	String get themed_icon => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon', {}) ?? 'Themed Icon';

	/// en: 'Auto-colored from IconTheme'
	String get themed_icon_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon_desc', {}) ?? 'Auto-colored from IconTheme';

	/// en: 'Using SvgConfig'
	String get using_svg_config => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config', {}) ?? 'Using SvgConfig';

	/// en: 'Reusable configuration presets'
	String get using_svg_config_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config_desc', {}) ?? 'Reusable configuration presets';
}

// Path: web_viewer
class TranslationsWebViewerEn {
	TranslationsWebViewerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Web Viewer Helper'
	String get title => TranslationOverrides.string(_root.$meta, 'web_viewer.title', {}) ?? 'Web Viewer Helper';

	/// en: 'Sanitized HTML'
	String get sanitized_html => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html', {}) ?? 'Sanitized HTML';

	/// en: 'WebViewerHelper.html() - Safe for user content'
	String get sanitized_html_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html_desc', {}) ?? 'WebViewerHelper.html() - Safe for user content';

	/// en: 'Style Presets'
	String get style_presets => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets', {}) ?? 'Style Presets';

	/// en: 'HtmlStyleConfig factory constructors'
	String get style_presets_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets_desc', {}) ?? 'HtmlStyleConfig factory constructors';

	/// en: 'Extract Text'
	String get extract_text => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text', {}) ?? 'Extract Text';

	/// en: 'htmlWidget.extractText()'
	String get extract_text_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text_desc', {}) ?? 'htmlWidget.extractText()';

	/// en: 'Extract Links'
	String get extract_links => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links', {}) ?? 'Extract Links';

	/// en: 'htmlWidget.extractLinks()'
	String get extract_links_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links_desc', {}) ?? 'htmlWidget.extractLinks()';

	/// en: 'No links found'
	String get no_links_found => TranslationOverrides.string(_root.$meta, 'web_viewer.no_links_found', {}) ?? 'No links found';

	/// en: 'To Widget'
	String get to_widget => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget', {}) ?? 'To Widget';

	/// en: 'htmlWidget.toWidget()'
	String get to_widget_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget_desc', {}) ?? 'htmlWidget.toWidget()';

	/// en: 'Web URL Viewer'
	String get web_url_viewer => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer', {}) ?? 'Web URL Viewer';

	/// en: 'WebViewerHelper.url() - Full WebView with navigation'
	String get web_url_viewer_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer_desc', {}) ?? 'WebViewerHelper.url() - Full WebView with navigation';

	/// en: 'Enter URL...'
	String get enter_url => TranslationOverrides.string(_root.$meta, 'web_viewer.enter_url', {}) ?? 'Enter URL...';

	/// en: 'Go'
	String get go => TranslationOverrides.string(_root.$meta, 'web_viewer.go', {}) ?? 'Go';

	/// en: 'Show Navigation: '
	String get show_navigation => TranslationOverrides.string(_root.$meta, 'web_viewer.show_navigation', {}) ?? 'Show Navigation: ';

	/// en: 'Preview'
	String get preview => TranslationOverrides.string(_root.$meta, 'web_viewer.preview', {}) ?? 'Preview';

	/// en: 'Link tapped: '
	String get link_tapped => TranslationOverrides.string(_root.$meta, 'web_viewer.link_tapped', {}) ?? 'Link tapped: ';
}

// Path: permissions_helper
class TranslationsPermissionsHelperEn {
	TranslationsPermissionsHelperEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Permissions'
	String get title => TranslationOverrides.string(_root.$meta, 'permissions_helper.title', {}) ?? 'Permissions';

	/// en: 'Runtime Permissions'
	String get runtime_permissions => TranslationOverrides.string(_root.$meta, 'permissions_helper.runtime_permissions', {}) ?? 'Runtime Permissions';

	/// en: 'Request'
	String get request => TranslationOverrides.string(_root.$meta, 'permissions_helper.request', {}) ?? 'Request';

	/// en: 'granted'
	String get granted => TranslationOverrides.string(_root.$meta, 'permissions_helper.granted', {}) ?? 'granted';

	/// en: 'denied'
	String get denied => TranslationOverrides.string(_root.$meta, 'permissions_helper.denied', {}) ?? 'denied';

	/// en: 'unknown'
	String get unknown => TranslationOverrides.string(_root.$meta, 'permissions_helper.unknown', {}) ?? 'unknown';
}

// Path: package_info
class TranslationsPackageInfoEn {
	TranslationsPackageInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Package Info'
	String get title => TranslationOverrides.string(_root.$meta, 'package_info.title', {}) ?? 'Package Info';
}

// Path: skeleton
class TranslationsSkeletonEn {
	TranslationsSkeletonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skeleton Helper'
	String get title => TranslationOverrides.string(_root.$meta, 'skeleton.title', {}) ?? 'Skeleton Helper';

	/// en: 'Animation:'
	String get animation => TranslationOverrides.string(_root.$meta, 'skeleton.animation', {}) ?? 'Animation:';

	/// en: 'Theme:'
	String get theme => TranslationOverrides.string(_root.$meta, 'skeleton.theme', {}) ?? 'Theme:';

	/// en: 'Light'
	String get light => TranslationOverrides.string(_root.$meta, 'skeleton.light', {}) ?? 'Light';

	/// en: 'Dark'
	String get dark => TranslationOverrides.string(_root.$meta, 'skeleton.dark', {}) ?? 'Dark';

	/// en: 'Basic Shapes'
	String get basic_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.basic_shapes', {}) ?? 'Basic Shapes';

	/// en: 'Text Shapes'
	String get text_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.text_shapes', {}) ?? 'Text Shapes';

	/// en: 'Avatar Shapes'
	String get avatar_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.avatar_shapes', {}) ?? 'Avatar Shapes';

	/// en: 'Custom Shapes'
	String get custom_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.custom_shapes', {}) ?? 'Custom Shapes';

	/// en: 'Rectangle'
	String get rectangle => TranslationOverrides.string(_root.$meta, 'skeleton.rectangle', {}) ?? 'Rectangle';

	/// en: 'Circle'
	String get circle => TranslationOverrides.string(_root.$meta, 'skeleton.circle', {}) ?? 'Circle';

	/// en: 'Rounded'
	String get rounded => TranslationOverrides.string(_root.$meta, 'skeleton.rounded', {}) ?? 'Rounded';

	/// en: 'Text Line'
	String get text_line => TranslationOverrides.string(_root.$meta, 'skeleton.text_line', {}) ?? 'Text Line';

	/// en: 'Paragraph'
	String get paragraph => TranslationOverrides.string(_root.$meta, 'skeleton.paragraph', {}) ?? 'Paragraph';

	/// en: 'Small'
	String get small => TranslationOverrides.string(_root.$meta, 'skeleton.small', {}) ?? 'Small';

	/// en: 'Medium'
	String get medium => TranslationOverrides.string(_root.$meta, 'skeleton.medium', {}) ?? 'Medium';

	/// en: 'Large'
	String get large => TranslationOverrides.string(_root.$meta, 'skeleton.large', {}) ?? 'Large';

	/// en: 'Diamond'
	String get diamond => TranslationOverrides.string(_root.$meta, 'skeleton.diamond', {}) ?? 'Diamond';

	/// en: 'Hexagon'
	String get hexagon => TranslationOverrides.string(_root.$meta, 'skeleton.hexagon', {}) ?? 'Hexagon';

	/// en: 'Star'
	String get star => TranslationOverrides.string(_root.$meta, 'skeleton.star', {}) ?? 'Star';

	/// en: 'List Items'
	String get list_items => TranslationOverrides.string(_root.$meta, 'skeleton.list_items', {}) ?? 'List Items';

	/// en: 'Cards'
	String get cards => TranslationOverrides.string(_root.$meta, 'skeleton.cards', {}) ?? 'Cards';

	/// en: 'Profile'
	String get profile => TranslationOverrides.string(_root.$meta, 'skeleton.profile', {}) ?? 'Profile';

	/// en: 'Social Post'
	String get social_post => TranslationOverrides.string(_root.$meta, 'skeleton.social_post', {}) ?? 'Social Post';

	/// en: 'Stories'
	String get stories => TranslationOverrides.string(_root.$meta, 'skeleton.stories', {}) ?? 'Stories';

	/// en: 'Product Cards'
	String get product_cards => TranslationOverrides.string(_root.$meta, 'skeleton.product_cards', {}) ?? 'Product Cards';

	/// en: 'Article'
	String get article => TranslationOverrides.string(_root.$meta, 'skeleton.article', {}) ?? 'Article';

	/// en: 'Color Themes'
	String get color_themes => TranslationOverrides.string(_root.$meta, 'skeleton.color_themes', {}) ?? 'Color Themes';

	/// en: 'Dark Theme'
	String get dark_theme => TranslationOverrides.string(_root.$meta, 'skeleton.dark_theme', {}) ?? 'Dark Theme';
}

// Path: settings_widgets
class TranslationsSettingsWidgetsEn {
	TranslationsSettingsWidgetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reset to Defaults'
	String get reset_dialog_title => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_title', {}) ?? 'Reset to Defaults';

	/// en: 'This will reset all theme settings to their default values. This action cannot be undone.'
	String get reset_dialog_content => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_content', {}) ?? 'This will reset all theme settings to their default values. This action cannot be undone.';

	/// en: 'Reset'
	String get reset => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset', {}) ?? 'Reset';

	/// en: 'Show Icons'
	String get show_icons => TranslationOverrides.string(_root.$meta, 'settings_widgets.show_icons', {}) ?? 'Show Icons';

	/// en: 'Toggle icon visibility globally'
	String get toggle_icon_visibility => TranslationOverrides.string(_root.$meta, 'settings_widgets.toggle_icon_visibility', {}) ?? 'Toggle icon visibility globally';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.ok' => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? 'OK',
			'common.cancel' => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? 'Cancel',
			'common.yes' => TranslationOverrides.string(_root.$meta, 'common.yes', {}) ?? 'Yes',
			'common.no' => TranslationOverrides.string(_root.$meta, 'common.no', {}) ?? 'No',
			'common.save' => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? 'Save',
			'common.delete' => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? 'Delete',
			'common.edit' => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? 'Edit',
			'common.close' => TranslationOverrides.string(_root.$meta, 'common.close', {}) ?? 'Close',
			'common.back' => TranslationOverrides.string(_root.$meta, 'common.back', {}) ?? 'Back',
			'common.next' => TranslationOverrides.string(_root.$meta, 'common.next', {}) ?? 'Next',
			'common.previous' => TranslationOverrides.string(_root.$meta, 'common.previous', {}) ?? 'Previous',
			'common.done' => TranslationOverrides.string(_root.$meta, 'common.done', {}) ?? 'Done',
			'common.loading' => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? 'Loading...',
			'common.error' => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? 'Error',
			'common.success' => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? 'Success',
			'common.dismiss' => TranslationOverrides.string(_root.$meta, 'common.dismiss', {}) ?? 'Dismiss',
			'common.grant' => TranslationOverrides.string(_root.$meta, 'common.grant', {}) ?? 'Grant',
			'common.undo' => TranslationOverrides.string(_root.$meta, 'common.undo', {}) ?? 'Undo',
			'common.retry' => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? 'Retry',
			'common.refresh' => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? 'Refresh',
			'common.initialize' => TranslationOverrides.string(_root.$meta, 'common.initialize', {}) ?? 'Initialize',
			'common.set' => TranslationOverrides.string(_root.$meta, 'common.set', {}) ?? 'Set',
			'common.subscribe' => TranslationOverrides.string(_root.$meta, 'common.subscribe', {}) ?? 'Subscribe',
			'common.user' => TranslationOverrides.string(_root.$meta, 'common.user', {}) ?? 'User',
			'auth.title' => TranslationOverrides.string(_root.$meta, 'auth.title', {}) ?? 'Authentication',
			'auth.sign_in' => TranslationOverrides.string(_root.$meta, 'auth.sign_in', {}) ?? 'Sign In',
			'auth.sign_up' => TranslationOverrides.string(_root.$meta, 'auth.sign_up', {}) ?? 'Sign Up',
			'auth.email' => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? 'Email',
			'auth.password' => TranslationOverrides.string(_root.$meta, 'auth.password', {}) ?? 'Password',
			'auth.forgot_password' => TranslationOverrides.string(_root.$meta, 'auth.forgot_password', {}) ?? 'Forgot Password?',
			'auth.remember_me' => TranslationOverrides.string(_root.$meta, 'auth.remember_me', {}) ?? 'Remember me',
			'auth.sign_in_failed' => TranslationOverrides.string(_root.$meta, 'auth.sign_in_failed', {}) ?? 'Sign in failed',
			'auth.sign_up_failed' => TranslationOverrides.string(_root.$meta, 'auth.sign_up_failed', {}) ?? 'Sign up failed',
			'account.title' => TranslationOverrides.string(_root.$meta, 'account.title', {}) ?? 'Account',
			'account.profile' => TranslationOverrides.string(_root.$meta, 'account.profile', {}) ?? 'Profile',
			'account.settings' => TranslationOverrides.string(_root.$meta, 'account.settings', {}) ?? 'Settings',
			'account.logout' => TranslationOverrides.string(_root.$meta, 'account.logout', {}) ?? 'Logout',
			'account.sign_out' => TranslationOverrides.string(_root.$meta, 'account.sign_out', {}) ?? 'Sign Out',
			'onboarding.skip' => TranslationOverrides.string(_root.$meta, 'onboarding.skip', {}) ?? 'Skip',
			'onboarding.get_started' => TranslationOverrides.string(_root.$meta, 'onboarding.get_started', {}) ?? 'Get Started',
			'onboarding.previous' => TranslationOverrides.string(_root.$meta, 'onboarding.previous', {}) ?? 'Previous',
			'onboarding.next' => TranslationOverrides.string(_root.$meta, 'onboarding.next', {}) ?? 'Next',
			'onboarding.no_pages_configured' => TranslationOverrides.string(_root.$meta, 'onboarding.no_pages_configured', {}) ?? 'No onboarding pages configured',
			'permissions.title' => TranslationOverrides.string(_root.$meta, 'permissions.title', {}) ?? 'Permissions Required',
			'permissions.description' => TranslationOverrides.string(_root.$meta, 'permissions.description', {}) ?? 'This app needs certain permissions to function properly.',
			'permissions.grant' => TranslationOverrides.string(_root.$meta, 'permissions.grant', {}) ?? 'Grant',
			'permissions.grant_all' => TranslationOverrides.string(_root.$meta, 'permissions.grant_all', {}) ?? 'Grant All Permissions',
			'permissions.denied' => TranslationOverrides.string(_root.$meta, 'permissions.denied', {}) ?? 'Permission Denied',
			'permissions.request_permissions' => TranslationOverrides.string(_root.$meta, 'permissions.request_permissions', {}) ?? 'Request Permissions',
			'search.hint' => TranslationOverrides.string(_root.$meta, 'search.hint', {}) ?? 'Search...',
			'search.no_results' => TranslationOverrides.string(_root.$meta, 'search.no_results', {}) ?? 'No results found',
			'error.generic' => TranslationOverrides.string(_root.$meta, 'error.generic', {}) ?? 'Something went wrong. Please try again.',
			'error.network' => TranslationOverrides.string(_root.$meta, 'error.network', {}) ?? 'Network error. Please check your connection.',
			'error.unauthorized' => TranslationOverrides.string(_root.$meta, 'error.unauthorized', {}) ?? 'You are not authorized to perform this action.',
			'error.error_code' => TranslationOverrides.string(_root.$meta, 'error.error_code', {}) ?? 'Error Code',
			'splash.loading' => TranslationOverrides.string(_root.$meta, 'splash.loading', {}) ?? 'Loading...',
			'splash.webview' => TranslationOverrides.string(_root.$meta, 'splash.webview', {}) ?? 'Webview',
			'splash.error' => TranslationOverrides.string(_root.$meta, 'splash.error', {}) ?? 'Error occurred',
			'splash.maintenance' => TranslationOverrides.string(_root.$meta, 'splash.maintenance', {}) ?? 'Under maintenance',
			'splash.empty' => TranslationOverrides.string(_root.$meta, 'splash.empty', {}) ?? 'No data available',
			'splash.unauthorized' => TranslationOverrides.string(_root.$meta, 'splash.unauthorized', {}) ?? 'Unauthorized',
			'splash.timeout' => TranslationOverrides.string(_root.$meta, 'splash.timeout', {}) ?? 'Request timeout',
			'empty_view.title' => TranslationOverrides.string(_root.$meta, 'empty_view.title', {}) ?? 'No content available',
			'empty_view.description' => TranslationOverrides.string(_root.$meta, 'empty_view.description', {}) ?? 'There\'s nothing to show here.',
			'loading.loading' => TranslationOverrides.string(_root.$meta, 'loading.loading', {}) ?? 'Loading...',
			'image_detail.title' => TranslationOverrides.string(_root.$meta, 'image_detail.title', {}) ?? 'Image',
			'home.title' => TranslationOverrides.string(_root.$meta, 'home.title', {}) ?? 'MasterFabric Core',
			'home.description' => TranslationOverrides.string(_root.$meta, 'home.description', {}) ?? 'A comprehensive Flutter framework for building scalable, maintainable mobile applications with pre-built components, state management patterns, and utility helpers.',
			'home.home_view_hidden' => TranslationOverrides.string(_root.$meta, 'home.home_view_hidden', {}) ?? 'Home view is hidden',
			'home.show_home_view' => TranslationOverrides.string(_root.$meta, 'home.show_home_view', {}) ?? 'Show Home View',
			'home.quick_navigation' => TranslationOverrides.string(_root.$meta, 'home.quick_navigation', {}) ?? 'Quick Navigation',
			'home.architecture' => TranslationOverrides.string(_root.$meta, 'home.architecture', {}) ?? 'Architecture',
			'home.core_features' => TranslationOverrides.string(_root.$meta, 'home.core_features', {}) ?? 'Core Features',
			'home.helper_modules' => TranslationOverrides.string(_root.$meta, 'home.helper_modules', {}) ?? 'Helper Modules',
			'home.getting_started' => TranslationOverrides.string(_root.$meta, 'home.getting_started', {}) ?? 'Getting Started',
			'home.products' => TranslationOverrides.string(_root.$meta, 'home.products', {}) ?? 'Products',
			'home.products_subtitle' => TranslationOverrides.string(_root.$meta, 'home.products_subtitle', {}) ?? 'Sample product list with search',
			'home.profile' => TranslationOverrides.string(_root.$meta, 'home.profile', {}) ?? 'Profile',
			'home.profile_subtitle' => TranslationOverrides.string(_root.$meta, 'home.profile_subtitle', {}) ?? 'User profile with device info',
			'home.helper_cases' => TranslationOverrides.string(_root.$meta, 'home.helper_cases', {}) ?? 'Helper Cases',
			'home.helper_cases_subtitle' => TranslationOverrides.string(_root.$meta, 'home.helper_cases_subtitle', {}) ?? 'Explore all utility helpers',
			'home.masterview_cubit' => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit', {}) ?? 'MasterViewCubit',
			'home.masterview_cubit_desc' => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit_desc', {}) ?? 'Base view class with integrated Cubit state management, lifecycle hooks, and common UI patterns.',
			'home.base_viewmodel_cubit' => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit', {}) ?? 'BaseViewModelCubit',
			'home.base_viewmodel_cubit_desc' => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit_desc', {}) ?? 'Extended Cubit with stateChanger pattern for clean state transitions and business logic separation.',
			'home.injectable_di' => TranslationOverrides.string(_root.$meta, 'home.injectable_di', {}) ?? 'Injectable DI',
			'home.injectable_di_desc' => TranslationOverrides.string(_root.$meta, 'home.injectable_di_desc', {}) ?? 'Automatic dependency injection with GetIt and injectable annotations for clean service resolution.',
			'home.gorouter_navigation' => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation', {}) ?? 'GoRouter Navigation',
			'home.gorouter_navigation_desc' => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation_desc', {}) ?? 'Declarative routing with type-safe navigation, deep linking, and route guards support.',
			'home.state_management' => TranslationOverrides.string(_root.$meta, 'home.state_management', {}) ?? 'State Management',
			'home.state_management_desc' => TranslationOverrides.string(_root.$meta, 'home.state_management_desc', {}) ?? 'Cubit, HydratedCubit, BLoC patterns',
			'home.prebuilt_views' => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views', {}) ?? 'Pre-built Views',
			'home.prebuilt_views_desc' => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views_desc', {}) ?? 'Splash, Auth, Onboarding, Error, Empty',
			'home.storage_solutions' => TranslationOverrides.string(_root.$meta, 'home.storage_solutions', {}) ?? 'Storage Solutions',
			'home.storage_solutions_desc' => TranslationOverrides.string(_root.$meta, 'home.storage_solutions_desc', {}) ?? 'SharedPreferences, HiveCE, Secure Storage',
			'home.theme_system' => TranslationOverrides.string(_root.$meta, 'home.theme_system', {}) ?? 'Theme System',
			'home.theme_system_desc' => TranslationOverrides.string(_root.$meta, 'home.theme_system_desc', {}) ?? 'Light/Dark themes, custom styling',
			'home.localization' => TranslationOverrides.string(_root.$meta, 'home.localization', {}) ?? 'Localization',
			'home.localization_desc' => TranslationOverrides.string(_root.$meta, 'home.localization_desc', {}) ?? 'i18n support with slang',
			'home.push_notifications' => TranslationOverrides.string(_root.$meta, 'home.push_notifications', {}) ?? 'Push Notifications',
			'home.push_notifications_desc' => TranslationOverrides.string(_root.$meta, 'home.push_notifications_desc', {}) ?? 'OneSignal & Firebase FCM integration',
			'home.webviewer' => TranslationOverrides.string(_root.$meta, 'home.webviewer', {}) ?? 'WebViewer',
			'home.webviewer_desc' => TranslationOverrides.string(_root.$meta, 'home.webviewer_desc', {}) ?? 'HTML rendering & WebView support',
			'home.svg_helper' => TranslationOverrides.string(_root.$meta, 'home.svg_helper', {}) ?? 'SVG Helper',
			'home.svg_helper_desc' => TranslationOverrides.string(_root.$meta, 'home.svg_helper_desc', {}) ?? 'Asset, network, string SVG sources',
			'home.force_update' => TranslationOverrides.string(_root.$meta, 'home.force_update', {}) ?? 'Force Update',
			'home.force_update_desc' => TranslationOverrides.string(_root.$meta, 'home.force_update_desc', {}) ?? 'Version check & store redirect',
			'home.skeleton_loading' => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading', {}) ?? 'Skeleton Loading',
			'home.skeleton_loading_desc' => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading_desc', {}) ?? '10 animation styles for loading states',
			'home.utilities' => TranslationOverrides.string(_root.$meta, 'home.utilities', {}) ?? 'Utilities',
			'home.utilities_desc' => TranslationOverrides.string(_root.$meta, 'home.utilities_desc', {}) ?? 'DateTime, URL, Share, Download, Permissions',
			'home.add_dependency' => TranslationOverrides.string(_root.$meta, 'home.add_dependency', {}) ?? 'Add dependency',
			'home.initialize_main' => TranslationOverrides.string(_root.$meta, 'home.initialize_main', {}) ?? 'Initialize in main.dart',
			'home.create_views' => TranslationOverrides.string(_root.$meta, 'home.create_views', {}) ?? 'Create views extending MasterViewCubit',
			'home.configure_routes' => TranslationOverrides.string(_root.$meta, 'home.configure_routes', {}) ?? 'Configure routes with GoRouter',
			'home.built_with' => TranslationOverrides.string(_root.$meta, 'home.built_with', {}) ?? 'Built with MasterFabric Core',
			'home.flutter_framework' => TranslationOverrides.string(_root.$meta, 'home.flutter_framework', {}) ?? 'Flutter Framework for Enterprise Apps',
			'products.title' => TranslationOverrides.string(_root.$meta, 'products.title', {}) ?? 'Products',
			'products.products_view_hidden' => TranslationOverrides.string(_root.$meta, 'products.products_view_hidden', {}) ?? 'Products view is hidden',
			'products.show_products_view' => TranslationOverrides.string(_root.$meta, 'products.show_products_view', {}) ?? 'Show Products View',
			'products.no_products' => TranslationOverrides.string(_root.$meta, 'products.no_products', {}) ?? 'No products',
			'products.no_results' => TranslationOverrides.string(_root.$meta, 'products.no_results', {}) ?? 'No results',
			'profile.title' => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? 'Profile',
			'profile.profile_view_hidden' => TranslationOverrides.string(_root.$meta, 'profile.profile_view_hidden', {}) ?? 'Profile view is hidden',
			'profile.show_profile_view' => TranslationOverrides.string(_root.$meta, 'profile.show_profile_view', {}) ?? 'Show Profile View',
			'profile.device' => TranslationOverrides.string(_root.$meta, 'profile.device', {}) ?? 'Device',
			'profile.actions' => TranslationOverrides.string(_root.$meta, 'profile.actions', {}) ?? 'Actions',
			'profile.platform' => TranslationOverrides.string(_root.$meta, 'profile.platform', {}) ?? 'platform',
			'profile.device_id' => TranslationOverrides.string(_root.$meta, 'profile.device_id', {}) ?? 'device_id',
			'profile.manufacturer' => TranslationOverrides.string(_root.$meta, 'profile.manufacturer', {}) ?? 'manufacturer',
			'settings.title' => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Settings',
			'settings.theme_mode' => TranslationOverrides.string(_root.$meta, 'settings.theme_mode', {}) ?? 'Theme Mode',
			'settings.font_size' => TranslationOverrides.string(_root.$meta, 'settings.font_size', {}) ?? 'Font Size',
			'settings.colors' => TranslationOverrides.string(_root.$meta, 'settings.colors', {}) ?? 'Colors',
			'settings.view_visibility' => TranslationOverrides.string(_root.$meta, 'settings.view_visibility', {}) ?? 'View Visibility',
			'settings.icons' => TranslationOverrides.string(_root.$meta, 'settings.icons', {}) ?? 'Icons',
			'settings.permissions' => TranslationOverrides.string(_root.$meta, 'settings.permissions', {}) ?? 'Permissions',
			'settings.manage_permissions' => TranslationOverrides.string(_root.$meta, 'settings.manage_permissions', {}) ?? 'Manage app permissions and runtime access',
			'settings.request_permissions_again' => TranslationOverrides.string(_root.$meta, 'settings.request_permissions_again', {}) ?? 'Request permissions again',
			'settings.open_app_settings' => TranslationOverrides.string(_root.$meta, 'settings.open_app_settings', {}) ?? 'Open app settings',
			'settings.language' => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? 'Language',
			'settings.reset_to_defaults' => TranslationOverrides.string(_root.$meta, 'settings.reset_to_defaults', {}) ?? 'Reset to Defaults',
			'settings.restore_theme_settings' => TranslationOverrides.string(_root.$meta, 'settings.restore_theme_settings', {}) ?? 'Restore all theme settings',
			'settings.light' => TranslationOverrides.string(_root.$meta, 'settings.light', {}) ?? 'Light',
			'settings.dark' => TranslationOverrides.string(_root.$meta, 'settings.dark', {}) ?? 'Dark',
			'settings.english' => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? 'English',
			'settings.turkish' => TranslationOverrides.string(_root.$meta, 'settings.turkish', {}) ?? 'Turkish',
			'settings.spanish' => TranslationOverrides.string(_root.$meta, 'settings.spanish', {}) ?? 'Spanish',
			'helpers.title' => TranslationOverrides.string(_root.$meta, 'helpers.title', {}) ?? 'Helpers',
			'helpers.core_utilities' => TranslationOverrides.string(_root.$meta, 'helpers.core_utilities', {}) ?? 'Core Utilities',
			'helpers.device_info' => TranslationOverrides.string(_root.$meta, 'helpers.device_info', {}) ?? 'Device Info',
			'helpers.local_storage' => TranslationOverrides.string(_root.$meta, 'helpers.local_storage', {}) ?? 'Local Storage',
			'helpers.hivece' => TranslationOverrides.string(_root.$meta, 'helpers.hivece', {}) ?? 'HiveCE',
			'helpers.date_time' => TranslationOverrides.string(_root.$meta, 'helpers.date_time', {}) ?? 'Date & Time',
			'helpers.url_launcher' => TranslationOverrides.string(_root.$meta, 'helpers.url_launcher', {}) ?? 'URL Launcher',
			'helpers.permissions' => TranslationOverrides.string(_root.$meta, 'helpers.permissions', {}) ?? 'Permissions',
			'helpers.share' => TranslationOverrides.string(_root.$meta, 'helpers.share', {}) ?? 'Share',
			'helpers.file_download' => TranslationOverrides.string(_root.$meta, 'helpers.file_download', {}) ?? 'File Download',
			'helpers.app_config' => TranslationOverrides.string(_root.$meta, 'helpers.app_config', {}) ?? 'App Config',
			'helpers.package_info' => TranslationOverrides.string(_root.$meta, 'helpers.package_info', {}) ?? 'Package Info',
			'helpers.svg_helper' => TranslationOverrides.string(_root.$meta, 'helpers.svg_helper', {}) ?? 'SVG Helper',
			'helpers.web_viewer' => TranslationOverrides.string(_root.$meta, 'helpers.web_viewer', {}) ?? 'Web Viewer',
			'helpers.push_notifications' => TranslationOverrides.string(_root.$meta, 'helpers.push_notifications', {}) ?? 'Push Notifications',
			'helpers.force_update' => TranslationOverrides.string(_root.$meta, 'helpers.force_update', {}) ?? 'Force Update',
			'helpers.skeleton_loading' => TranslationOverrides.string(_root.$meta, 'helpers.skeleton_loading', {}) ?? 'Skeleton Loading',
			'app_config.title' => TranslationOverrides.string(_root.$meta, 'app_config.title', {}) ?? 'App Config',
			'app_config.app_settings' => TranslationOverrides.string(_root.$meta, 'app_config.app_settings', {}) ?? 'appSettings',
			'app_config.ui_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.ui_configuration', {}) ?? 'uiConfiguration',
			'app_config.splash_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.splash_configuration', {}) ?? 'splashConfiguration',
			'app_config.api_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.api_configuration', {}) ?? 'apiConfiguration',
			'app_config.storage_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.storage_configuration', {}) ?? 'storageConfiguration',
			'app_config.null_value' => TranslationOverrides.string(_root.$meta, 'app_config.null_value', {}) ?? 'null',
			'app_config.items' => TranslationOverrides.string(_root.$meta, 'app_config.items', {}) ?? 'items',
			'app_config.keys' => TranslationOverrides.string(_root.$meta, 'app_config.keys', {}) ?? 'keys',
			'app_config.config_file_path' => TranslationOverrides.string(_root.$meta, 'app_config.config_file_path', {}) ?? 'assets/app_config.json',
			'device_info.title' => TranslationOverrides.string(_root.$meta, 'device_info.title', {}) ?? 'Device Info',
			'device_info.platform' => TranslationOverrides.string(_root.$meta, 'device_info.platform', {}) ?? 'platform',
			'device_info.device_name' => TranslationOverrides.string(_root.$meta, 'device_info.device_name', {}) ?? 'device_name',
			'device_info.device_id' => TranslationOverrides.string(_root.$meta, 'device_info.device_id', {}) ?? 'device_id',
			'device_info.manufacturer' => TranslationOverrides.string(_root.$meta, 'device_info.manufacturer', {}) ?? 'manufacturer',
			'device_info.model' => TranslationOverrides.string(_root.$meta, 'device_info.model', {}) ?? 'model',
			'device_info.system_version' => TranslationOverrides.string(_root.$meta, 'device_info.system_version', {}) ?? 'system_version',
			'force_update.title' => TranslationOverrides.string(_root.$meta, 'force_update.title', {}) ?? 'Force Update',
			'force_update.status' => TranslationOverrides.string(_root.$meta, 'force_update.status', {}) ?? 'Status',
			'force_update.preview_ui_type' => TranslationOverrides.string(_root.$meta, 'force_update.preview_ui_type', {}) ?? 'Preview UI Type',
			'force_update.simulation_mode' => TranslationOverrides.string(_root.$meta, 'force_update.simulation_mode', {}) ?? 'Simulation Mode',
			'force_update.preview_update_ui' => TranslationOverrides.string(_root.$meta, 'force_update.preview_update_ui', {}) ?? 'Preview Update UI',
			'force_update.version_comparison' => TranslationOverrides.string(_root.$meta, 'force_update.version_comparison', {}) ?? 'Version Comparison',
			'force_update.initialized' => TranslationOverrides.string(_root.$meta, 'force_update.initialized', {}) ?? 'Initialized',
			'force_update.not_initialized' => TranslationOverrides.string(_root.$meta, 'force_update.not_initialized', {}) ?? 'Not Initialized',
			'force_update.app_version' => TranslationOverrides.string(_root.$meta, 'force_update.app_version', {}) ?? 'App Version',
			'force_update.check_update' => TranslationOverrides.string(_root.$meta, 'force_update.check_update', {}) ?? 'Check Update',
			'force_update.open_store' => TranslationOverrides.string(_root.$meta, 'force_update.open_store', {}) ?? 'Open Store',
			'force_update.alert_dialog' => TranslationOverrides.string(_root.$meta, 'force_update.alert_dialog', {}) ?? 'Alert Dialog',
			'force_update.bottom_sheet' => TranslationOverrides.string(_root.$meta, 'force_update.bottom_sheet', {}) ?? 'Bottom Sheet',
			'force_update.full_screen' => TranslationOverrides.string(_root.$meta, 'force_update.full_screen', {}) ?? 'Full Screen',
			'force_update.compact_dialog_overlay' => TranslationOverrides.string(_root.$meta, 'force_update.compact_dialog_overlay', {}) ?? 'Compact dialog overlay',
			'force_update.modal_from_bottom' => TranslationOverrides.string(_root.$meta, 'force_update.modal_from_bottom', {}) ?? 'Modal from bottom',
			'force_update.blocking_full_page' => TranslationOverrides.string(_root.$meta, 'force_update.blocking_full_page', {}) ?? 'Blocking full page',
			'force_update.use_simulation' => TranslationOverrides.string(_root.$meta, 'force_update.use_simulation', {}) ?? 'Use Simulation',
			'force_update.current_version' => TranslationOverrides.string(_root.$meta, 'force_update.current_version', {}) ?? 'Current Version',
			'force_update.latest_version' => TranslationOverrides.string(_root.$meta, 'force_update.latest_version', {}) ?? 'Latest Version',
			'force_update.minimum_version' => TranslationOverrides.string(_root.$meta, 'force_update.minimum_version', {}) ?? 'Minimum Version',
			'force_update.simulation_tip' => TranslationOverrides.string(_root.$meta, 'force_update.simulation_tip', {}) ?? 'Tip: Set minimum > current for force update',
			'force_update.optional_update' => TranslationOverrides.string(_root.$meta, 'force_update.optional_update', {}) ?? 'Optional Update',
			'force_update.optional_update_desc' => TranslationOverrides.string(_root.$meta, 'force_update.optional_update_desc', {}) ?? 'Show dismissible update prompt',
			'force_update.recommended_update' => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update', {}) ?? 'Recommended Update',
			'force_update.recommended_update_desc' => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update_desc', {}) ?? 'Show recommended update prompt',
			'force_update.force_update_desc' => TranslationOverrides.string(_root.$meta, 'force_update.force_update_desc', {}) ?? 'Show blocking update screen',
			'force_update.version_comparator_examples' => TranslationOverrides.string(_root.$meta, 'force_update.version_comparator_examples', {}) ?? 'Version Comparator Examples',
			'force_update.older' => TranslationOverrides.string(_root.$meta, 'force_update.older', {}) ?? 'older',
			'force_update.newer' => TranslationOverrides.string(_root.$meta, 'force_update.newer', {}) ?? 'newer',
			'force_update.equal' => TranslationOverrides.string(_root.$meta, 'force_update.equal', {}) ?? 'equal',
			'force_update.older_prerelease' => TranslationOverrides.string(_root.$meta, 'force_update.older_prerelease', {}) ?? 'older (pre-release)',
			'force_update.older_build' => TranslationOverrides.string(_root.$meta, 'force_update.older_build', {}) ?? 'older (build)',
			'push_notification.title' => TranslationOverrides.string(_root.$meta, 'push_notification.title', {}) ?? 'Push Notifications',
			'push_notification.status' => TranslationOverrides.string(_root.$meta, 'push_notification.status', {}) ?? 'Status',
			'push_notification.active_providers' => TranslationOverrides.string(_root.$meta, 'push_notification.active_providers', {}) ?? 'Active Providers',
			'push_notification.permissions' => TranslationOverrides.string(_root.$meta, 'push_notification.permissions', {}) ?? 'Permissions',
			'push_notification.device_tokens' => TranslationOverrides.string(_root.$meta, 'push_notification.device_tokens', {}) ?? 'Device Tokens',
			'push_notification.topic_subscriptions' => TranslationOverrides.string(_root.$meta, 'push_notification.topic_subscriptions', {}) ?? 'Topic Subscriptions',
			'push_notification.user_targeting' => TranslationOverrides.string(_root.$meta, 'push_notification.user_targeting', {}) ?? 'User Targeting',
			'push_notification.actions' => TranslationOverrides.string(_root.$meta, 'push_notification.actions', {}) ?? 'Actions',
			'push_notification.initialized' => TranslationOverrides.string(_root.$meta, 'push_notification.initialized', {}) ?? 'Initialized',
			'push_notification.not_initialized' => TranslationOverrides.string(_root.$meta, 'push_notification.not_initialized', {}) ?? 'Not Initialized',
			'push_notification.providers_active' => TranslationOverrides.string(_root.$meta, 'push_notification.providers_active', {}) ?? 'provider(s) active',
			'push_notification.tap_to_initialize' => TranslationOverrides.string(_root.$meta, 'push_notification.tap_to_initialize', {}) ?? 'Tap to initialize',
			'push_notification.initialize_to_see_providers' => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_providers', {}) ?? 'Initialize to see active providers',
			'push_notification.no_providers_configured' => TranslationOverrides.string(_root.$meta, 'push_notification.no_providers_configured', {}) ?? 'No providers configured',
			'push_notification.initialize_to_check_permissions' => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_check_permissions', {}) ?? 'Initialize to check permissions',
			'push_notification.initialize_to_see_tokens' => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_tokens', {}) ?? 'Initialize to see device tokens',
			'push_notification.no_token' => TranslationOverrides.string(_root.$meta, 'push_notification.no_token', {}) ?? 'No token',
			'push_notification.token_copied' => TranslationOverrides.string(_root.$meta, 'push_notification.token_copied', {}) ?? 'Token copied to clipboard',
			'push_notification.opt_in' => TranslationOverrides.string(_root.$meta, 'push_notification.opt_in', {}) ?? 'Opt In',
			'push_notification.opt_out' => TranslationOverrides.string(_root.$meta, 'push_notification.opt_out', {}) ?? 'Opt Out',
			'push_notification.clear_all_data' => TranslationOverrides.string(_root.$meta, 'push_notification.clear_all_data', {}) ?? 'Clear All Data',
			'push_notification.enter_topic_name' => TranslationOverrides.string(_root.$meta, 'push_notification.enter_topic_name', {}) ?? 'Enter topic name',
			'push_notification.subscribe' => TranslationOverrides.string(_root.$meta, 'push_notification.subscribe', {}) ?? 'Subscribe',
			'push_notification.no_topics_subscribed' => TranslationOverrides.string(_root.$meta, 'push_notification.no_topics_subscribed', {}) ?? 'No topics subscribed',
			'push_notification.enter_user_id' => TranslationOverrides.string(_root.$meta, 'push_notification.enter_user_id', {}) ?? 'Enter user ID',
			'push_notification.set' => TranslationOverrides.string(_root.$meta, 'push_notification.set', {}) ?? 'Set',
			'push_notification.remove_user_id' => TranslationOverrides.string(_root.$meta, 'push_notification.remove_user_id', {}) ?? 'Remove User ID (Logout)',
			'push_notification.onesignal' => TranslationOverrides.string(_root.$meta, 'push_notification.onesignal', {}) ?? 'OneSignal',
			'push_notification.firebase' => TranslationOverrides.string(_root.$meta, 'push_notification.firebase', {}) ?? 'Firebase',
			'push_notification.custom' => TranslationOverrides.string(_root.$meta, 'push_notification.custom', {}) ?? 'Custom',
			'storage.title' => TranslationOverrides.string(_root.$meta, 'storage.title', {}) ?? 'Local Storage',
			'storage.string' => TranslationOverrides.string(_root.$meta, 'storage.string', {}) ?? 'String',
			'storage.int' => TranslationOverrides.string(_root.$meta, 'storage.int', {}) ?? 'Int',
			'storage.double' => TranslationOverrides.string(_root.$meta, 'storage.double', {}) ?? 'Double',
			'storage.bool' => TranslationOverrides.string(_root.$meta, 'storage.bool', {}) ?? 'Bool',
			'storage.key' => TranslationOverrides.string(_root.$meta, 'storage.key', {}) ?? 'key',
			'storage.value' => TranslationOverrides.string(_root.$meta, 'storage.value', {}) ?? 'value',
			'storage.true_value' => TranslationOverrides.string(_root.$meta, 'storage.true_value', {}) ?? 'true',
			'storage.false_value' => TranslationOverrides.string(_root.$meta, 'storage.false_value', {}) ?? 'false',
			'hivece_storage.title' => TranslationOverrides.string(_root.$meta, 'hivece_storage.title', {}) ?? 'HiveCE Storage',
			'hivece_storage.string' => TranslationOverrides.string(_root.$meta, 'hivece_storage.string', {}) ?? 'String',
			'hivece_storage.int' => TranslationOverrides.string(_root.$meta, 'hivece_storage.int', {}) ?? 'Int',
			'hivece_storage.double' => TranslationOverrides.string(_root.$meta, 'hivece_storage.double', {}) ?? 'Double',
			'hivece_storage.bool' => TranslationOverrides.string(_root.$meta, 'hivece_storage.bool', {}) ?? 'Bool',
			'hivece_storage.list_string' => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_string', {}) ?? 'List<String>',
			'hivece_storage.get_by_key' => TranslationOverrides.string(_root.$meta, 'hivece_storage.get_by_key', {}) ?? 'Get by Key',
			'hivece_storage.all_items' => TranslationOverrides.string(_root.$meta, 'hivece_storage.all_items', {}) ?? 'All Items',
			'hivece_storage.no_items' => TranslationOverrides.string(_root.$meta, 'hivece_storage.no_items', {}) ?? 'No items',
			'hivece_storage.key' => TranslationOverrides.string(_root.$meta, 'hivece_storage.key', {}) ?? 'key',
			'hivece_storage.value' => TranslationOverrides.string(_root.$meta, 'hivece_storage.value', {}) ?? 'value',
			'hivece_storage.enter_key' => TranslationOverrides.string(_root.$meta, 'hivece_storage.enter_key', {}) ?? 'enter key',
			'hivece_storage.list_hint' => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_hint', {}) ?? 'a, b, c',
			'hivece_storage.true_value' => TranslationOverrides.string(_root.$meta, 'hivece_storage.true_value', {}) ?? 'true',
			'hivece_storage.false_value' => TranslationOverrides.string(_root.$meta, 'hivece_storage.false_value', {}) ?? 'false',
			'hivece_storage.get' => TranslationOverrides.string(_root.$meta, 'hivece_storage.get', {}) ?? 'Get',
			'share.title' => TranslationOverrides.string(_root.$meta, 'share.title', {}) ?? 'Share',
			'share.share_file' => TranslationOverrides.string(_root.$meta, 'share.share_file', {}) ?? 'Share File',
			'share.share_text' => TranslationOverrides.string(_root.$meta, 'share.share_text', {}) ?? 'Share Text',
			'share.enter_text' => TranslationOverrides.string(_root.$meta, 'share.enter_text', {}) ?? 'Enter text',
			'download.title' => TranslationOverrides.string(_root.$meta, 'download.title', {}) ?? 'Download',
			'download.download_file' => TranslationOverrides.string(_root.$meta, 'download.download_file', {}) ?? 'Download File',
			'download.url' => TranslationOverrides.string(_root.$meta, 'download.url', {}) ?? 'URL',
			'download.filename' => TranslationOverrides.string(_root.$meta, 'download.filename', {}) ?? 'Filename',
			'datetime.title' => TranslationOverrides.string(_root.$meta, 'datetime.title', {}) ?? 'DateTime',
			'datetime.format_date' => TranslationOverrides.string(_root.$meta, 'datetime.format_date', {}) ?? 'formatDate()',
			'datetime.format_time' => TranslationOverrides.string(_root.$meta, 'datetime.format_time', {}) ?? 'formatTime()',
			'datetime.format_datetime' => TranslationOverrides.string(_root.$meta, 'datetime.format_datetime', {}) ?? 'formatDateTime()',
			'datetime.get_relative_time' => TranslationOverrides.string(_root.$meta, 'datetime.get_relative_time', {}) ?? 'getRelativeTime()',
			'datetime.parse_date' => TranslationOverrides.string(_root.$meta, 'datetime.parse_date', {}) ?? 'parseDate()',
			'url_launcher.title' => TranslationOverrides.string(_root.$meta, 'url_launcher.title', {}) ?? 'URL Launcher',
			'url_launcher.url' => TranslationOverrides.string(_root.$meta, 'url_launcher.url', {}) ?? 'URL',
			'url_launcher.phone' => TranslationOverrides.string(_root.$meta, 'url_launcher.phone', {}) ?? 'Phone',
			'url_launcher.email' => TranslationOverrides.string(_root.$meta, 'url_launcher.email', {}) ?? 'Email',
			'url_launcher.sms' => TranslationOverrides.string(_root.$meta, 'url_launcher.sms', {}) ?? 'SMS',
			'url_launcher.launch' => TranslationOverrides.string(_root.$meta, 'url_launcher.launch', {}) ?? 'Launch',
			'svg_helper.title' => TranslationOverrides.string(_root.$meta, 'svg_helper.title', {}) ?? 'SVG Helper',
			'svg_helper.asset_svg' => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg', {}) ?? 'Asset SVG',
			'svg_helper.asset_svg_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg_desc', {}) ?? 'Load SVG from assets folder',
			'svg_helper.color_tinting' => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting', {}) ?? 'Color Tinting',
			'svg_helper.color_tinting_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting_desc', {}) ?? 'Change SVG color dynamically',
			'svg_helper.size_variations' => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations', {}) ?? 'Size Variations',
			'svg_helper.size_variations_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations_desc', {}) ?? 'Different icon sizes',
			'svg_helper.svg_from_string' => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string', {}) ?? 'SVG from String',
			'svg_helper.svg_from_string_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string_desc', {}) ?? 'Render SVG from raw string data',
			'svg_helper.themed_icon' => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon', {}) ?? 'Themed Icon',
			'svg_helper.themed_icon_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon_desc', {}) ?? 'Auto-colored from IconTheme',
			'svg_helper.using_svg_config' => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config', {}) ?? 'Using SvgConfig',
			'svg_helper.using_svg_config_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config_desc', {}) ?? 'Reusable configuration presets',
			'web_viewer.title' => TranslationOverrides.string(_root.$meta, 'web_viewer.title', {}) ?? 'Web Viewer Helper',
			'web_viewer.sanitized_html' => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html', {}) ?? 'Sanitized HTML',
			'web_viewer.sanitized_html_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html_desc', {}) ?? 'WebViewerHelper.html() - Safe for user content',
			'web_viewer.style_presets' => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets', {}) ?? 'Style Presets',
			'web_viewer.style_presets_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets_desc', {}) ?? 'HtmlStyleConfig factory constructors',
			'web_viewer.extract_text' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text', {}) ?? 'Extract Text',
			'web_viewer.extract_text_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text_desc', {}) ?? 'htmlWidget.extractText()',
			'web_viewer.extract_links' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links', {}) ?? 'Extract Links',
			'web_viewer.extract_links_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links_desc', {}) ?? 'htmlWidget.extractLinks()',
			'web_viewer.no_links_found' => TranslationOverrides.string(_root.$meta, 'web_viewer.no_links_found', {}) ?? 'No links found',
			'web_viewer.to_widget' => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget', {}) ?? 'To Widget',
			'web_viewer.to_widget_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget_desc', {}) ?? 'htmlWidget.toWidget()',
			'web_viewer.web_url_viewer' => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer', {}) ?? 'Web URL Viewer',
			'web_viewer.web_url_viewer_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer_desc', {}) ?? 'WebViewerHelper.url() - Full WebView with navigation',
			'web_viewer.enter_url' => TranslationOverrides.string(_root.$meta, 'web_viewer.enter_url', {}) ?? 'Enter URL...',
			'web_viewer.go' => TranslationOverrides.string(_root.$meta, 'web_viewer.go', {}) ?? 'Go',
			'web_viewer.show_navigation' => TranslationOverrides.string(_root.$meta, 'web_viewer.show_navigation', {}) ?? 'Show Navigation: ',
			'web_viewer.preview' => TranslationOverrides.string(_root.$meta, 'web_viewer.preview', {}) ?? 'Preview',
			'web_viewer.link_tapped' => TranslationOverrides.string(_root.$meta, 'web_viewer.link_tapped', {}) ?? 'Link tapped: ',
			'permissions_helper.title' => TranslationOverrides.string(_root.$meta, 'permissions_helper.title', {}) ?? 'Permissions',
			'permissions_helper.runtime_permissions' => TranslationOverrides.string(_root.$meta, 'permissions_helper.runtime_permissions', {}) ?? 'Runtime Permissions',
			'permissions_helper.request' => TranslationOverrides.string(_root.$meta, 'permissions_helper.request', {}) ?? 'Request',
			'permissions_helper.granted' => TranslationOverrides.string(_root.$meta, 'permissions_helper.granted', {}) ?? 'granted',
			'permissions_helper.denied' => TranslationOverrides.string(_root.$meta, 'permissions_helper.denied', {}) ?? 'denied',
			'permissions_helper.unknown' => TranslationOverrides.string(_root.$meta, 'permissions_helper.unknown', {}) ?? 'unknown',
			'package_info.title' => TranslationOverrides.string(_root.$meta, 'package_info.title', {}) ?? 'Package Info',
			'skeleton.title' => TranslationOverrides.string(_root.$meta, 'skeleton.title', {}) ?? 'Skeleton Helper',
			'skeleton.animation' => TranslationOverrides.string(_root.$meta, 'skeleton.animation', {}) ?? 'Animation:',
			'skeleton.theme' => TranslationOverrides.string(_root.$meta, 'skeleton.theme', {}) ?? 'Theme:',
			'skeleton.light' => TranslationOverrides.string(_root.$meta, 'skeleton.light', {}) ?? 'Light',
			'skeleton.dark' => TranslationOverrides.string(_root.$meta, 'skeleton.dark', {}) ?? 'Dark',
			'skeleton.basic_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.basic_shapes', {}) ?? 'Basic Shapes',
			'skeleton.text_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.text_shapes', {}) ?? 'Text Shapes',
			'skeleton.avatar_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.avatar_shapes', {}) ?? 'Avatar Shapes',
			'skeleton.custom_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.custom_shapes', {}) ?? 'Custom Shapes',
			'skeleton.rectangle' => TranslationOverrides.string(_root.$meta, 'skeleton.rectangle', {}) ?? 'Rectangle',
			'skeleton.circle' => TranslationOverrides.string(_root.$meta, 'skeleton.circle', {}) ?? 'Circle',
			'skeleton.rounded' => TranslationOverrides.string(_root.$meta, 'skeleton.rounded', {}) ?? 'Rounded',
			'skeleton.text_line' => TranslationOverrides.string(_root.$meta, 'skeleton.text_line', {}) ?? 'Text Line',
			'skeleton.paragraph' => TranslationOverrides.string(_root.$meta, 'skeleton.paragraph', {}) ?? 'Paragraph',
			'skeleton.small' => TranslationOverrides.string(_root.$meta, 'skeleton.small', {}) ?? 'Small',
			'skeleton.medium' => TranslationOverrides.string(_root.$meta, 'skeleton.medium', {}) ?? 'Medium',
			'skeleton.large' => TranslationOverrides.string(_root.$meta, 'skeleton.large', {}) ?? 'Large',
			'skeleton.diamond' => TranslationOverrides.string(_root.$meta, 'skeleton.diamond', {}) ?? 'Diamond',
			'skeleton.hexagon' => TranslationOverrides.string(_root.$meta, 'skeleton.hexagon', {}) ?? 'Hexagon',
			'skeleton.star' => TranslationOverrides.string(_root.$meta, 'skeleton.star', {}) ?? 'Star',
			'skeleton.list_items' => TranslationOverrides.string(_root.$meta, 'skeleton.list_items', {}) ?? 'List Items',
			'skeleton.cards' => TranslationOverrides.string(_root.$meta, 'skeleton.cards', {}) ?? 'Cards',
			'skeleton.profile' => TranslationOverrides.string(_root.$meta, 'skeleton.profile', {}) ?? 'Profile',
			'skeleton.social_post' => TranslationOverrides.string(_root.$meta, 'skeleton.social_post', {}) ?? 'Social Post',
			'skeleton.stories' => TranslationOverrides.string(_root.$meta, 'skeleton.stories', {}) ?? 'Stories',
			'skeleton.product_cards' => TranslationOverrides.string(_root.$meta, 'skeleton.product_cards', {}) ?? 'Product Cards',
			'skeleton.article' => TranslationOverrides.string(_root.$meta, 'skeleton.article', {}) ?? 'Article',
			'skeleton.color_themes' => TranslationOverrides.string(_root.$meta, 'skeleton.color_themes', {}) ?? 'Color Themes',
			'skeleton.dark_theme' => TranslationOverrides.string(_root.$meta, 'skeleton.dark_theme', {}) ?? 'Dark Theme',
			'settings_widgets.reset_dialog_title' => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_title', {}) ?? 'Reset to Defaults',
			'settings_widgets.reset_dialog_content' => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_content', {}) ?? 'This will reset all theme settings to their default values. This action cannot be undone.',
			'settings_widgets.reset' => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset', {}) ?? 'Reset',
			'settings_widgets.show_icons' => TranslationOverrides.string(_root.$meta, 'settings_widgets.show_icons', {}) ?? 'Show Icons',
			'settings_widgets.toggle_icon_visibility' => TranslationOverrides.string(_root.$meta, 'settings_widgets.toggle_icon_visibility', {}) ?? 'Toggle icon visibility globally',
			_ => null,
		};
	}
}
