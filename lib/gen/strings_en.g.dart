///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
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
	String get ok => 'OK';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'No'
	String get no => 'No';

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Close'
	String get close => 'Close';

	/// en: 'Back'
	String get back => 'Back';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Previous'
	String get previous => 'Previous';

	/// en: 'Done'
	String get done => 'Done';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Success'
	String get success => 'Success';

	/// en: 'Dismiss'
	String get dismiss => 'Dismiss';

	/// en: 'Grant'
	String get grant => 'Grant';

	/// en: 'Undo'
	String get undo => 'Undo';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'Refresh'
	String get refresh => 'Refresh';

	/// en: 'Initialize'
	String get initialize => 'Initialize';

	/// en: 'Set'
	String get set => 'Set';

	/// en: 'Subscribe'
	String get subscribe => 'Subscribe';

	/// en: 'User'
	String get user => 'User';
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Authentication'
	String get title => 'Authentication';

	/// en: 'Sign In'
	String get sign_in => 'Sign In';

	/// en: 'Sign Up'
	String get sign_up => 'Sign Up';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Forgot Password?'
	String get forgot_password => 'Forgot Password?';

	/// en: 'Remember me'
	String get remember_me => 'Remember me';

	/// en: 'Sign in failed'
	String get sign_in_failed => 'Sign in failed';

	/// en: 'Sign up failed'
	String get sign_up_failed => 'Sign up failed';
}

// Path: account
class TranslationsAccountEn {
	TranslationsAccountEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Account'
	String get title => 'Account';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Sign Out'
	String get sign_out => 'Sign Out';
}

// Path: onboarding
class TranslationsOnboardingEn {
	TranslationsOnboardingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Get Started'
	String get get_started => 'Get Started';

	/// en: 'Previous'
	String get previous => 'Previous';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'No onboarding pages configured'
	String get no_pages_configured => 'No onboarding pages configured';
}

// Path: permissions
class TranslationsPermissionsEn {
	TranslationsPermissionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Permissions Required'
	String get title => 'Permissions Required';

	/// en: 'This app needs certain permissions to function properly.'
	String get description => 'This app needs certain permissions to function properly.';

	/// en: 'Grant'
	String get grant => 'Grant';

	/// en: 'Grant All Permissions'
	String get grant_all => 'Grant All Permissions';

	/// en: 'Permission Denied'
	String get denied => 'Permission Denied';

	/// en: 'Request Permissions'
	String get request_permissions => 'Request Permissions';
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Search...'
	String get hint => 'Search...';

	/// en: 'No results found'
	String get no_results => 'No results found';
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Something went wrong. Please try again.'
	String get generic => 'Something went wrong. Please try again.';

	/// en: 'Network error. Please check your connection.'
	String get network => 'Network error. Please check your connection.';

	/// en: 'You are not authorized to perform this action.'
	String get unauthorized => 'You are not authorized to perform this action.';

	/// en: 'Error Code'
	String get error_code => 'Error Code';
}

// Path: splash
class TranslationsSplashEn {
	TranslationsSplashEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Webview'
	String get webview => 'Webview';

	/// en: 'Error occurred'
	String get error => 'Error occurred';

	/// en: 'Under maintenance'
	String get maintenance => 'Under maintenance';

	/// en: 'No data available'
	String get empty => 'No data available';

	/// en: 'Unauthorized'
	String get unauthorized => 'Unauthorized';

	/// en: 'Request timeout'
	String get timeout => 'Request timeout';
}

// Path: empty_view
class TranslationsEmptyViewEn {
	TranslationsEmptyViewEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No content available'
	String get title => 'No content available';

	/// en: 'There's nothing to show here.'
	String get description => 'There\'s nothing to show here.';
}

// Path: loading
class TranslationsLoadingEn {
	TranslationsLoadingEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Loading...'
	String get loading => 'Loading...';
}

// Path: image_detail
class TranslationsImageDetailEn {
	TranslationsImageDetailEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Image'
	String get title => 'Image';
}

// Path: home
class TranslationsHomeEn {
	TranslationsHomeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'MasterFabric Core'
	String get title => 'MasterFabric Core';

	/// en: 'A comprehensive Flutter framework for building scalable, maintainable mobile applications with pre-built components, state management patterns, and utility helpers.'
	String get description => 'A comprehensive Flutter framework for building scalable, maintainable mobile applications with pre-built components, state management patterns, and utility helpers.';

	/// en: 'Home view is hidden'
	String get home_view_hidden => 'Home view is hidden';

	/// en: 'Show Home View'
	String get show_home_view => 'Show Home View';

	/// en: 'Quick Navigation'
	String get quick_navigation => 'Quick Navigation';

	/// en: 'Architecture'
	String get architecture => 'Architecture';

	/// en: 'Core Features'
	String get core_features => 'Core Features';

	/// en: 'Helper Modules'
	String get helper_modules => 'Helper Modules';

	/// en: 'Getting Started'
	String get getting_started => 'Getting Started';

	/// en: 'Products'
	String get products => 'Products';

	/// en: 'Sample product list with search'
	String get products_subtitle => 'Sample product list with search';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'User profile with device info'
	String get profile_subtitle => 'User profile with device info';

	/// en: 'Helper Cases'
	String get helper_cases => 'Helper Cases';

	/// en: 'Explore all utility helpers'
	String get helper_cases_subtitle => 'Explore all utility helpers';

	/// en: 'MasterViewCubit'
	String get masterview_cubit => 'MasterViewCubit';

	/// en: 'Base view class with integrated Cubit state management, lifecycle hooks, and common UI patterns.'
	String get masterview_cubit_desc => 'Base view class with integrated Cubit state management, lifecycle hooks, and common UI patterns.';

	/// en: 'BaseViewModelCubit'
	String get base_viewmodel_cubit => 'BaseViewModelCubit';

	/// en: 'Extended Cubit with stateChanger pattern for clean state transitions and business logic separation.'
	String get base_viewmodel_cubit_desc => 'Extended Cubit with stateChanger pattern for clean state transitions and business logic separation.';

	/// en: 'Injectable DI'
	String get injectable_di => 'Injectable DI';

	/// en: 'Automatic dependency injection with GetIt and injectable annotations for clean service resolution.'
	String get injectable_di_desc => 'Automatic dependency injection with GetIt and injectable annotations for clean service resolution.';

	/// en: 'GoRouter Navigation'
	String get gorouter_navigation => 'GoRouter Navigation';

	/// en: 'Declarative routing with type-safe navigation, deep linking, and route guards support.'
	String get gorouter_navigation_desc => 'Declarative routing with type-safe navigation, deep linking, and route guards support.';

	/// en: 'State Management'
	String get state_management => 'State Management';

	/// en: 'Cubit, HydratedCubit, BLoC patterns'
	String get state_management_desc => 'Cubit, HydratedCubit, BLoC patterns';

	/// en: 'Pre-built Views'
	String get prebuilt_views => 'Pre-built Views';

	/// en: 'Splash, Auth, Onboarding, Error, Empty'
	String get prebuilt_views_desc => 'Splash, Auth, Onboarding, Error, Empty';

	/// en: 'Storage Solutions'
	String get storage_solutions => 'Storage Solutions';

	/// en: 'SharedPreferences, HiveCE, Secure Storage'
	String get storage_solutions_desc => 'SharedPreferences, HiveCE, Secure Storage';

	/// en: 'Theme System'
	String get theme_system => 'Theme System';

	/// en: 'Light/Dark themes, custom styling'
	String get theme_system_desc => 'Light/Dark themes, custom styling';

	/// en: 'Localization'
	String get localization => 'Localization';

	/// en: 'i18n support with slang'
	String get localization_desc => 'i18n support with slang';

	/// en: 'Push Notifications'
	String get push_notifications => 'Push Notifications';

	/// en: 'OneSignal & Firebase FCM integration'
	String get push_notifications_desc => 'OneSignal & Firebase FCM integration';

	/// en: 'WebViewer'
	String get webviewer => 'WebViewer';

	/// en: 'HTML rendering & WebView support'
	String get webviewer_desc => 'HTML rendering & WebView support';

	/// en: 'SVG Helper'
	String get svg_helper => 'SVG Helper';

	/// en: 'Asset, network, string SVG sources'
	String get svg_helper_desc => 'Asset, network, string SVG sources';

	/// en: 'Force Update'
	String get force_update => 'Force Update';

	/// en: 'Version check & store redirect'
	String get force_update_desc => 'Version check & store redirect';

	/// en: 'Skeleton Loading'
	String get skeleton_loading => 'Skeleton Loading';

	/// en: '10 animation styles for loading states'
	String get skeleton_loading_desc => '10 animation styles for loading states';

	/// en: 'Utilities'
	String get utilities => 'Utilities';

	/// en: 'DateTime, URL, Share, Download, Permissions'
	String get utilities_desc => 'DateTime, URL, Share, Download, Permissions';

	/// en: 'Add dependency'
	String get add_dependency => 'Add dependency';

	/// en: 'Initialize in main.dart'
	String get initialize_main => 'Initialize in main.dart';

	/// en: 'Create views extending MasterViewCubit'
	String get create_views => 'Create views extending MasterViewCubit';

	/// en: 'Configure routes with GoRouter'
	String get configure_routes => 'Configure routes with GoRouter';

	/// en: 'Built with MasterFabric Core'
	String get built_with => 'Built with MasterFabric Core';

	/// en: 'Flutter Framework for Enterprise Apps'
	String get flutter_framework => 'Flutter Framework for Enterprise Apps';
}

// Path: products
class TranslationsProductsEn {
	TranslationsProductsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Products'
	String get title => 'Products';

	/// en: 'Products view is hidden'
	String get products_view_hidden => 'Products view is hidden';

	/// en: 'Show Products View'
	String get show_products_view => 'Show Products View';

	/// en: 'No products'
	String get no_products => 'No products';

	/// en: 'No results'
	String get no_results => 'No results';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get title => 'Profile';

	/// en: 'Profile view is hidden'
	String get profile_view_hidden => 'Profile view is hidden';

	/// en: 'Show Profile View'
	String get show_profile_view => 'Show Profile View';

	/// en: 'Device'
	String get device => 'Device';

	/// en: 'Actions'
	String get actions => 'Actions';

	/// en: 'platform'
	String get platform => 'platform';

	/// en: 'device_id'
	String get device_id => 'device_id';

	/// en: 'manufacturer'
	String get manufacturer => 'manufacturer';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	/// en: 'Theme Mode'
	String get theme_mode => 'Theme Mode';

	/// en: 'Font Size'
	String get font_size => 'Font Size';

	/// en: 'Colors'
	String get colors => 'Colors';

	/// en: 'View Visibility'
	String get view_visibility => 'View Visibility';

	/// en: 'Icons'
	String get icons => 'Icons';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Reset to Defaults'
	String get reset_to_defaults => 'Reset to Defaults';

	/// en: 'Restore all theme settings'
	String get restore_theme_settings => 'Restore all theme settings';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'English'
	String get english => 'English';

	/// en: 'Turkish'
	String get turkish => 'Turkish';

	/// en: 'Spanish'
	String get spanish => 'Spanish';
}

// Path: helpers
class TranslationsHelpersEn {
	TranslationsHelpersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Helpers'
	String get title => 'Helpers';

	/// en: 'Core Utilities'
	String get core_utilities => 'Core Utilities';

	/// en: 'Device Info'
	String get device_info => 'Device Info';

	/// en: 'Local Storage'
	String get local_storage => 'Local Storage';

	/// en: 'HiveCE'
	String get hivece => 'HiveCE';

	/// en: 'Date & Time'
	String get date_time => 'Date & Time';

	/// en: 'URL Launcher'
	String get url_launcher => 'URL Launcher';

	/// en: 'Permissions'
	String get permissions => 'Permissions';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'File Download'
	String get file_download => 'File Download';

	/// en: 'App Config'
	String get app_config => 'App Config';

	/// en: 'Package Info'
	String get package_info => 'Package Info';

	/// en: 'SVG Helper'
	String get svg_helper => 'SVG Helper';

	/// en: 'Web Viewer'
	String get web_viewer => 'Web Viewer';

	/// en: 'Push Notifications'
	String get push_notifications => 'Push Notifications';

	/// en: 'Force Update'
	String get force_update => 'Force Update';

	/// en: 'Skeleton Loading'
	String get skeleton_loading => 'Skeleton Loading';
}

// Path: app_config
class TranslationsAppConfigEn {
	TranslationsAppConfigEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'App Config'
	String get title => 'App Config';

	/// en: 'appSettings'
	String get app_settings => 'appSettings';

	/// en: 'uiConfiguration'
	String get ui_configuration => 'uiConfiguration';

	/// en: 'splashConfiguration'
	String get splash_configuration => 'splashConfiguration';

	/// en: 'apiConfiguration'
	String get api_configuration => 'apiConfiguration';

	/// en: 'storageConfiguration'
	String get storage_configuration => 'storageConfiguration';

	/// en: 'null'
	String get null_value => 'null';

	/// en: 'items'
	String get items => 'items';

	/// en: 'keys'
	String get keys => 'keys';

	/// en: 'assets/app_config.json'
	String get config_file_path => 'assets/app_config.json';
}

// Path: device_info
class TranslationsDeviceInfoEn {
	TranslationsDeviceInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Device Info'
	String get title => 'Device Info';

	/// en: 'platform'
	String get platform => 'platform';

	/// en: 'device_name'
	String get device_name => 'device_name';

	/// en: 'device_id'
	String get device_id => 'device_id';

	/// en: 'manufacturer'
	String get manufacturer => 'manufacturer';

	/// en: 'model'
	String get model => 'model';

	/// en: 'system_version'
	String get system_version => 'system_version';
}

// Path: force_update
class TranslationsForceUpdateEn {
	TranslationsForceUpdateEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Force Update'
	String get title => 'Force Update';

	/// en: 'Status'
	String get status => 'Status';

	/// en: 'Preview UI Type'
	String get preview_ui_type => 'Preview UI Type';

	/// en: 'Simulation Mode'
	String get simulation_mode => 'Simulation Mode';

	/// en: 'Preview Update UI'
	String get preview_update_ui => 'Preview Update UI';

	/// en: 'Version Comparison'
	String get version_comparison => 'Version Comparison';

	/// en: 'Initialized'
	String get initialized => 'Initialized';

	/// en: 'Not Initialized'
	String get not_initialized => 'Not Initialized';

	/// en: 'App Version'
	String get app_version => 'App Version';

	/// en: 'Check Update'
	String get check_update => 'Check Update';

	/// en: 'Open Store'
	String get open_store => 'Open Store';

	/// en: 'Alert Dialog'
	String get alert_dialog => 'Alert Dialog';

	/// en: 'Bottom Sheet'
	String get bottom_sheet => 'Bottom Sheet';

	/// en: 'Full Screen'
	String get full_screen => 'Full Screen';

	/// en: 'Compact dialog overlay'
	String get compact_dialog_overlay => 'Compact dialog overlay';

	/// en: 'Modal from bottom'
	String get modal_from_bottom => 'Modal from bottom';

	/// en: 'Blocking full page'
	String get blocking_full_page => 'Blocking full page';

	/// en: 'Use Simulation'
	String get use_simulation => 'Use Simulation';

	/// en: 'Current Version'
	String get current_version => 'Current Version';

	/// en: 'Latest Version'
	String get latest_version => 'Latest Version';

	/// en: 'Minimum Version'
	String get minimum_version => 'Minimum Version';

	/// en: 'Tip: Set minimum > current for force update'
	String get simulation_tip => 'Tip: Set minimum > current for force update';

	/// en: 'Optional Update'
	String get optional_update => 'Optional Update';

	/// en: 'Show dismissible update prompt'
	String get optional_update_desc => 'Show dismissible update prompt';

	/// en: 'Recommended Update'
	String get recommended_update => 'Recommended Update';

	/// en: 'Show recommended update prompt'
	String get recommended_update_desc => 'Show recommended update prompt';

	/// en: 'Show blocking update screen'
	String get force_update_desc => 'Show blocking update screen';

	/// en: 'Version Comparator Examples'
	String get version_comparator_examples => 'Version Comparator Examples';

	/// en: 'older'
	String get older => 'older';

	/// en: 'newer'
	String get newer => 'newer';

	/// en: 'equal'
	String get equal => 'equal';

	/// en: 'older (pre-release)'
	String get older_prerelease => 'older (pre-release)';

	/// en: 'older (build)'
	String get older_build => 'older (build)';
}

// Path: push_notification
class TranslationsPushNotificationEn {
	TranslationsPushNotificationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Push Notifications'
	String get title => 'Push Notifications';

	/// en: 'Status'
	String get status => 'Status';

	/// en: 'Active Providers'
	String get active_providers => 'Active Providers';

	/// en: 'Permissions'
	String get permissions => 'Permissions';

	/// en: 'Device Tokens'
	String get device_tokens => 'Device Tokens';

	/// en: 'Topic Subscriptions'
	String get topic_subscriptions => 'Topic Subscriptions';

	/// en: 'User Targeting'
	String get user_targeting => 'User Targeting';

	/// en: 'Actions'
	String get actions => 'Actions';

	/// en: 'Initialized'
	String get initialized => 'Initialized';

	/// en: 'Not Initialized'
	String get not_initialized => 'Not Initialized';

	/// en: 'provider(s) active'
	String get providers_active => 'provider(s) active';

	/// en: 'Tap to initialize'
	String get tap_to_initialize => 'Tap to initialize';

	/// en: 'Initialize to see active providers'
	String get initialize_to_see_providers => 'Initialize to see active providers';

	/// en: 'No providers configured'
	String get no_providers_configured => 'No providers configured';

	/// en: 'Initialize to check permissions'
	String get initialize_to_check_permissions => 'Initialize to check permissions';

	/// en: 'Initialize to see device tokens'
	String get initialize_to_see_tokens => 'Initialize to see device tokens';

	/// en: 'No token'
	String get no_token => 'No token';

	/// en: 'Token copied to clipboard'
	String get token_copied => 'Token copied to clipboard';

	/// en: 'Opt In'
	String get opt_in => 'Opt In';

	/// en: 'Opt Out'
	String get opt_out => 'Opt Out';

	/// en: 'Clear All Data'
	String get clear_all_data => 'Clear All Data';

	/// en: 'Enter topic name'
	String get enter_topic_name => 'Enter topic name';

	/// en: 'Subscribe'
	String get subscribe => 'Subscribe';

	/// en: 'No topics subscribed'
	String get no_topics_subscribed => 'No topics subscribed';

	/// en: 'Enter user ID'
	String get enter_user_id => 'Enter user ID';

	/// en: 'Set'
	String get set => 'Set';

	/// en: 'Remove User ID (Logout)'
	String get remove_user_id => 'Remove User ID (Logout)';

	/// en: 'OneSignal'
	String get onesignal => 'OneSignal';

	/// en: 'Firebase'
	String get firebase => 'Firebase';

	/// en: 'Custom'
	String get custom => 'Custom';
}

// Path: storage
class TranslationsStorageEn {
	TranslationsStorageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Local Storage'
	String get title => 'Local Storage';

	/// en: 'String'
	String get string => 'String';

	/// en: 'Int'
	String get int => 'Int';

	/// en: 'Double'
	String get double => 'Double';

	/// en: 'Bool'
	String get bool => 'Bool';

	/// en: 'key'
	String get key => 'key';

	/// en: 'value'
	String get value => 'value';

	/// en: 'true'
	String get true_value => 'true';

	/// en: 'false'
	String get false_value => 'false';
}

// Path: hivece_storage
class TranslationsHiveceStorageEn {
	TranslationsHiveceStorageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'HiveCE Storage'
	String get title => 'HiveCE Storage';

	/// en: 'String'
	String get string => 'String';

	/// en: 'Int'
	String get int => 'Int';

	/// en: 'Double'
	String get double => 'Double';

	/// en: 'Bool'
	String get bool => 'Bool';

	/// en: 'List<String>'
	String get list_string => 'List<String>';

	/// en: 'Get by Key'
	String get get_by_key => 'Get by Key';

	/// en: 'All Items'
	String get all_items => 'All Items';

	/// en: 'No items'
	String get no_items => 'No items';

	/// en: 'key'
	String get key => 'key';

	/// en: 'value'
	String get value => 'value';

	/// en: 'enter key'
	String get enter_key => 'enter key';

	/// en: 'a, b, c'
	String get list_hint => 'a, b, c';

	/// en: 'true'
	String get true_value => 'true';

	/// en: 'false'
	String get false_value => 'false';

	/// en: 'Get'
	String get get => 'Get';
}

// Path: share
class TranslationsShareEn {
	TranslationsShareEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Share'
	String get title => 'Share';

	/// en: 'Share File'
	String get share_file => 'Share File';

	/// en: 'Share Text'
	String get share_text => 'Share Text';

	/// en: 'Enter text'
	String get enter_text => 'Enter text';
}

// Path: download
class TranslationsDownloadEn {
	TranslationsDownloadEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Download'
	String get title => 'Download';

	/// en: 'Download File'
	String get download_file => 'Download File';

	/// en: 'URL'
	String get url => 'URL';

	/// en: 'Filename'
	String get filename => 'Filename';
}

// Path: datetime
class TranslationsDatetimeEn {
	TranslationsDatetimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'DateTime'
	String get title => 'DateTime';

	/// en: 'formatDate()'
	String get format_date => 'formatDate()';

	/// en: 'formatTime()'
	String get format_time => 'formatTime()';

	/// en: 'formatDateTime()'
	String get format_datetime => 'formatDateTime()';

	/// en: 'getRelativeTime()'
	String get get_relative_time => 'getRelativeTime()';

	/// en: 'parseDate()'
	String get parse_date => 'parseDate()';
}

// Path: url_launcher
class TranslationsUrlLauncherEn {
	TranslationsUrlLauncherEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'URL Launcher'
	String get title => 'URL Launcher';

	/// en: 'URL'
	String get url => 'URL';

	/// en: 'Phone'
	String get phone => 'Phone';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'SMS'
	String get sms => 'SMS';

	/// en: 'Launch'
	String get launch => 'Launch';
}

// Path: svg_helper
class TranslationsSvgHelperEn {
	TranslationsSvgHelperEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'SVG Helper'
	String get title => 'SVG Helper';

	/// en: 'Asset SVG'
	String get asset_svg => 'Asset SVG';

	/// en: 'Load SVG from assets folder'
	String get asset_svg_desc => 'Load SVG from assets folder';

	/// en: 'Color Tinting'
	String get color_tinting => 'Color Tinting';

	/// en: 'Change SVG color dynamically'
	String get color_tinting_desc => 'Change SVG color dynamically';

	/// en: 'Size Variations'
	String get size_variations => 'Size Variations';

	/// en: 'Different icon sizes'
	String get size_variations_desc => 'Different icon sizes';

	/// en: 'SVG from String'
	String get svg_from_string => 'SVG from String';

	/// en: 'Render SVG from raw string data'
	String get svg_from_string_desc => 'Render SVG from raw string data';

	/// en: 'Themed Icon'
	String get themed_icon => 'Themed Icon';

	/// en: 'Auto-colored from IconTheme'
	String get themed_icon_desc => 'Auto-colored from IconTheme';

	/// en: 'Using SvgConfig'
	String get using_svg_config => 'Using SvgConfig';

	/// en: 'Reusable configuration presets'
	String get using_svg_config_desc => 'Reusable configuration presets';
}

// Path: web_viewer
class TranslationsWebViewerEn {
	TranslationsWebViewerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Web Viewer Helper'
	String get title => 'Web Viewer Helper';

	/// en: 'Sanitized HTML'
	String get sanitized_html => 'Sanitized HTML';

	/// en: 'WebViewerHelper.html() - Safe for user content'
	String get sanitized_html_desc => 'WebViewerHelper.html() - Safe for user content';

	/// en: 'Style Presets'
	String get style_presets => 'Style Presets';

	/// en: 'HtmlStyleConfig factory constructors'
	String get style_presets_desc => 'HtmlStyleConfig factory constructors';

	/// en: 'Extract Text'
	String get extract_text => 'Extract Text';

	/// en: 'htmlWidget.extractText()'
	String get extract_text_desc => 'htmlWidget.extractText()';

	/// en: 'Extract Links'
	String get extract_links => 'Extract Links';

	/// en: 'htmlWidget.extractLinks()'
	String get extract_links_desc => 'htmlWidget.extractLinks()';

	/// en: 'No links found'
	String get no_links_found => 'No links found';

	/// en: 'To Widget'
	String get to_widget => 'To Widget';

	/// en: 'htmlWidget.toWidget()'
	String get to_widget_desc => 'htmlWidget.toWidget()';

	/// en: 'Web URL Viewer'
	String get web_url_viewer => 'Web URL Viewer';

	/// en: 'WebViewerHelper.url() - Full WebView with navigation'
	String get web_url_viewer_desc => 'WebViewerHelper.url() - Full WebView with navigation';

	/// en: 'Enter URL...'
	String get enter_url => 'Enter URL...';

	/// en: 'Go'
	String get go => 'Go';

	/// en: 'Show Navigation: '
	String get show_navigation => 'Show Navigation: ';

	/// en: 'Preview'
	String get preview => 'Preview';

	/// en: 'Link tapped: '
	String get link_tapped => 'Link tapped: ';
}

// Path: permissions_helper
class TranslationsPermissionsHelperEn {
	TranslationsPermissionsHelperEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Permissions'
	String get title => 'Permissions';

	/// en: 'Runtime Permissions'
	String get runtime_permissions => 'Runtime Permissions';

	/// en: 'Request'
	String get request => 'Request';

	/// en: 'granted'
	String get granted => 'granted';

	/// en: 'denied'
	String get denied => 'denied';

	/// en: 'unknown'
	String get unknown => 'unknown';
}

// Path: package_info
class TranslationsPackageInfoEn {
	TranslationsPackageInfoEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Package Info'
	String get title => 'Package Info';
}

// Path: skeleton
class TranslationsSkeletonEn {
	TranslationsSkeletonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Skeleton Helper'
	String get title => 'Skeleton Helper';

	/// en: 'Animation:'
	String get animation => 'Animation:';

	/// en: 'Theme:'
	String get theme => 'Theme:';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'Basic Shapes'
	String get basic_shapes => 'Basic Shapes';

	/// en: 'Text Shapes'
	String get text_shapes => 'Text Shapes';

	/// en: 'Avatar Shapes'
	String get avatar_shapes => 'Avatar Shapes';

	/// en: 'Custom Shapes'
	String get custom_shapes => 'Custom Shapes';

	/// en: 'Rectangle'
	String get rectangle => 'Rectangle';

	/// en: 'Circle'
	String get circle => 'Circle';

	/// en: 'Rounded'
	String get rounded => 'Rounded';

	/// en: 'Text Line'
	String get text_line => 'Text Line';

	/// en: 'Paragraph'
	String get paragraph => 'Paragraph';

	/// en: 'Small'
	String get small => 'Small';

	/// en: 'Medium'
	String get medium => 'Medium';

	/// en: 'Large'
	String get large => 'Large';

	/// en: 'Diamond'
	String get diamond => 'Diamond';

	/// en: 'Hexagon'
	String get hexagon => 'Hexagon';

	/// en: 'Star'
	String get star => 'Star';

	/// en: 'List Items'
	String get list_items => 'List Items';

	/// en: 'Cards'
	String get cards => 'Cards';

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Social Post'
	String get social_post => 'Social Post';

	/// en: 'Stories'
	String get stories => 'Stories';

	/// en: 'Product Cards'
	String get product_cards => 'Product Cards';

	/// en: 'Article'
	String get article => 'Article';

	/// en: 'Color Themes'
	String get color_themes => 'Color Themes';

	/// en: 'Dark Theme'
	String get dark_theme => 'Dark Theme';
}

// Path: settings_widgets
class TranslationsSettingsWidgetsEn {
	TranslationsSettingsWidgetsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Reset to Defaults'
	String get reset_dialog_title => 'Reset to Defaults';

	/// en: 'This will reset all theme settings to their default values. This action cannot be undone.'
	String get reset_dialog_content => 'This will reset all theme settings to their default values. This action cannot be undone.';

	/// en: 'Reset'
	String get reset => 'Reset';

	/// en: 'Show Icons'
	String get show_icons => 'Show Icons';

	/// en: 'Toggle icon visibility globally'
	String get toggle_icon_visibility => 'Toggle icon visibility globally';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.ok' => 'OK',
			'common.cancel' => 'Cancel',
			'common.yes' => 'Yes',
			'common.no' => 'No',
			'common.save' => 'Save',
			'common.delete' => 'Delete',
			'common.edit' => 'Edit',
			'common.close' => 'Close',
			'common.back' => 'Back',
			'common.next' => 'Next',
			'common.previous' => 'Previous',
			'common.done' => 'Done',
			'common.loading' => 'Loading...',
			'common.error' => 'Error',
			'common.success' => 'Success',
			'common.dismiss' => 'Dismiss',
			'common.grant' => 'Grant',
			'common.undo' => 'Undo',
			'common.retry' => 'Retry',
			'common.refresh' => 'Refresh',
			'common.initialize' => 'Initialize',
			'common.set' => 'Set',
			'common.subscribe' => 'Subscribe',
			'common.user' => 'User',
			'auth.title' => 'Authentication',
			'auth.sign_in' => 'Sign In',
			'auth.sign_up' => 'Sign Up',
			'auth.email' => 'Email',
			'auth.password' => 'Password',
			'auth.forgot_password' => 'Forgot Password?',
			'auth.remember_me' => 'Remember me',
			'auth.sign_in_failed' => 'Sign in failed',
			'auth.sign_up_failed' => 'Sign up failed',
			'account.title' => 'Account',
			'account.profile' => 'Profile',
			'account.settings' => 'Settings',
			'account.logout' => 'Logout',
			'account.sign_out' => 'Sign Out',
			'onboarding.skip' => 'Skip',
			'onboarding.get_started' => 'Get Started',
			'onboarding.previous' => 'Previous',
			'onboarding.next' => 'Next',
			'onboarding.no_pages_configured' => 'No onboarding pages configured',
			'permissions.title' => 'Permissions Required',
			'permissions.description' => 'This app needs certain permissions to function properly.',
			'permissions.grant' => 'Grant',
			'permissions.grant_all' => 'Grant All Permissions',
			'permissions.denied' => 'Permission Denied',
			'permissions.request_permissions' => 'Request Permissions',
			'search.hint' => 'Search...',
			'search.no_results' => 'No results found',
			'error.generic' => 'Something went wrong. Please try again.',
			'error.network' => 'Network error. Please check your connection.',
			'error.unauthorized' => 'You are not authorized to perform this action.',
			'error.error_code' => 'Error Code',
			'splash.loading' => 'Loading...',
			'splash.webview' => 'Webview',
			'splash.error' => 'Error occurred',
			'splash.maintenance' => 'Under maintenance',
			'splash.empty' => 'No data available',
			'splash.unauthorized' => 'Unauthorized',
			'splash.timeout' => 'Request timeout',
			'empty_view.title' => 'No content available',
			'empty_view.description' => 'There\'s nothing to show here.',
			'loading.loading' => 'Loading...',
			'image_detail.title' => 'Image',
			'home.title' => 'MasterFabric Core',
			'home.description' => 'A comprehensive Flutter framework for building scalable, maintainable mobile applications with pre-built components, state management patterns, and utility helpers.',
			'home.home_view_hidden' => 'Home view is hidden',
			'home.show_home_view' => 'Show Home View',
			'home.quick_navigation' => 'Quick Navigation',
			'home.architecture' => 'Architecture',
			'home.core_features' => 'Core Features',
			'home.helper_modules' => 'Helper Modules',
			'home.getting_started' => 'Getting Started',
			'home.products' => 'Products',
			'home.products_subtitle' => 'Sample product list with search',
			'home.profile' => 'Profile',
			'home.profile_subtitle' => 'User profile with device info',
			'home.helper_cases' => 'Helper Cases',
			'home.helper_cases_subtitle' => 'Explore all utility helpers',
			'home.masterview_cubit' => 'MasterViewCubit',
			'home.masterview_cubit_desc' => 'Base view class with integrated Cubit state management, lifecycle hooks, and common UI patterns.',
			'home.base_viewmodel_cubit' => 'BaseViewModelCubit',
			'home.base_viewmodel_cubit_desc' => 'Extended Cubit with stateChanger pattern for clean state transitions and business logic separation.',
			'home.injectable_di' => 'Injectable DI',
			'home.injectable_di_desc' => 'Automatic dependency injection with GetIt and injectable annotations for clean service resolution.',
			'home.gorouter_navigation' => 'GoRouter Navigation',
			'home.gorouter_navigation_desc' => 'Declarative routing with type-safe navigation, deep linking, and route guards support.',
			'home.state_management' => 'State Management',
			'home.state_management_desc' => 'Cubit, HydratedCubit, BLoC patterns',
			'home.prebuilt_views' => 'Pre-built Views',
			'home.prebuilt_views_desc' => 'Splash, Auth, Onboarding, Error, Empty',
			'home.storage_solutions' => 'Storage Solutions',
			'home.storage_solutions_desc' => 'SharedPreferences, HiveCE, Secure Storage',
			'home.theme_system' => 'Theme System',
			'home.theme_system_desc' => 'Light/Dark themes, custom styling',
			'home.localization' => 'Localization',
			'home.localization_desc' => 'i18n support with slang',
			'home.push_notifications' => 'Push Notifications',
			'home.push_notifications_desc' => 'OneSignal & Firebase FCM integration',
			'home.webviewer' => 'WebViewer',
			'home.webviewer_desc' => 'HTML rendering & WebView support',
			'home.svg_helper' => 'SVG Helper',
			'home.svg_helper_desc' => 'Asset, network, string SVG sources',
			'home.force_update' => 'Force Update',
			'home.force_update_desc' => 'Version check & store redirect',
			'home.skeleton_loading' => 'Skeleton Loading',
			'home.skeleton_loading_desc' => '10 animation styles for loading states',
			'home.utilities' => 'Utilities',
			'home.utilities_desc' => 'DateTime, URL, Share, Download, Permissions',
			'home.add_dependency' => 'Add dependency',
			'home.initialize_main' => 'Initialize in main.dart',
			'home.create_views' => 'Create views extending MasterViewCubit',
			'home.configure_routes' => 'Configure routes with GoRouter',
			'home.built_with' => 'Built with MasterFabric Core',
			'home.flutter_framework' => 'Flutter Framework for Enterprise Apps',
			'products.title' => 'Products',
			'products.products_view_hidden' => 'Products view is hidden',
			'products.show_products_view' => 'Show Products View',
			'products.no_products' => 'No products',
			'products.no_results' => 'No results',
			'profile.title' => 'Profile',
			'profile.profile_view_hidden' => 'Profile view is hidden',
			'profile.show_profile_view' => 'Show Profile View',
			'profile.device' => 'Device',
			'profile.actions' => 'Actions',
			'profile.platform' => 'platform',
			'profile.device_id' => 'device_id',
			'profile.manufacturer' => 'manufacturer',
			'settings.title' => 'Settings',
			'settings.theme_mode' => 'Theme Mode',
			'settings.font_size' => 'Font Size',
			'settings.colors' => 'Colors',
			'settings.view_visibility' => 'View Visibility',
			'settings.icons' => 'Icons',
			'settings.language' => 'Language',
			'settings.reset_to_defaults' => 'Reset to Defaults',
			'settings.restore_theme_settings' => 'Restore all theme settings',
			'settings.light' => 'Light',
			'settings.dark' => 'Dark',
			'settings.english' => 'English',
			'settings.turkish' => 'Turkish',
			'settings.spanish' => 'Spanish',
			'helpers.title' => 'Helpers',
			'helpers.core_utilities' => 'Core Utilities',
			'helpers.device_info' => 'Device Info',
			'helpers.local_storage' => 'Local Storage',
			'helpers.hivece' => 'HiveCE',
			'helpers.date_time' => 'Date & Time',
			'helpers.url_launcher' => 'URL Launcher',
			'helpers.permissions' => 'Permissions',
			'helpers.share' => 'Share',
			'helpers.file_download' => 'File Download',
			'helpers.app_config' => 'App Config',
			'helpers.package_info' => 'Package Info',
			'helpers.svg_helper' => 'SVG Helper',
			'helpers.web_viewer' => 'Web Viewer',
			'helpers.push_notifications' => 'Push Notifications',
			'helpers.force_update' => 'Force Update',
			'helpers.skeleton_loading' => 'Skeleton Loading',
			'app_config.title' => 'App Config',
			'app_config.app_settings' => 'appSettings',
			'app_config.ui_configuration' => 'uiConfiguration',
			'app_config.splash_configuration' => 'splashConfiguration',
			'app_config.api_configuration' => 'apiConfiguration',
			'app_config.storage_configuration' => 'storageConfiguration',
			'app_config.null_value' => 'null',
			'app_config.items' => 'items',
			'app_config.keys' => 'keys',
			'app_config.config_file_path' => 'assets/app_config.json',
			'device_info.title' => 'Device Info',
			'device_info.platform' => 'platform',
			'device_info.device_name' => 'device_name',
			'device_info.device_id' => 'device_id',
			'device_info.manufacturer' => 'manufacturer',
			'device_info.model' => 'model',
			'device_info.system_version' => 'system_version',
			'force_update.title' => 'Force Update',
			'force_update.status' => 'Status',
			'force_update.preview_ui_type' => 'Preview UI Type',
			'force_update.simulation_mode' => 'Simulation Mode',
			'force_update.preview_update_ui' => 'Preview Update UI',
			'force_update.version_comparison' => 'Version Comparison',
			'force_update.initialized' => 'Initialized',
			'force_update.not_initialized' => 'Not Initialized',
			'force_update.app_version' => 'App Version',
			'force_update.check_update' => 'Check Update',
			'force_update.open_store' => 'Open Store',
			'force_update.alert_dialog' => 'Alert Dialog',
			'force_update.bottom_sheet' => 'Bottom Sheet',
			'force_update.full_screen' => 'Full Screen',
			'force_update.compact_dialog_overlay' => 'Compact dialog overlay',
			'force_update.modal_from_bottom' => 'Modal from bottom',
			'force_update.blocking_full_page' => 'Blocking full page',
			'force_update.use_simulation' => 'Use Simulation',
			'force_update.current_version' => 'Current Version',
			'force_update.latest_version' => 'Latest Version',
			'force_update.minimum_version' => 'Minimum Version',
			'force_update.simulation_tip' => 'Tip: Set minimum > current for force update',
			'force_update.optional_update' => 'Optional Update',
			'force_update.optional_update_desc' => 'Show dismissible update prompt',
			'force_update.recommended_update' => 'Recommended Update',
			'force_update.recommended_update_desc' => 'Show recommended update prompt',
			'force_update.force_update_desc' => 'Show blocking update screen',
			'force_update.version_comparator_examples' => 'Version Comparator Examples',
			'force_update.older' => 'older',
			'force_update.newer' => 'newer',
			'force_update.equal' => 'equal',
			'force_update.older_prerelease' => 'older (pre-release)',
			'force_update.older_build' => 'older (build)',
			'push_notification.title' => 'Push Notifications',
			'push_notification.status' => 'Status',
			'push_notification.active_providers' => 'Active Providers',
			'push_notification.permissions' => 'Permissions',
			'push_notification.device_tokens' => 'Device Tokens',
			'push_notification.topic_subscriptions' => 'Topic Subscriptions',
			'push_notification.user_targeting' => 'User Targeting',
			'push_notification.actions' => 'Actions',
			'push_notification.initialized' => 'Initialized',
			'push_notification.not_initialized' => 'Not Initialized',
			'push_notification.providers_active' => 'provider(s) active',
			'push_notification.tap_to_initialize' => 'Tap to initialize',
			'push_notification.initialize_to_see_providers' => 'Initialize to see active providers',
			'push_notification.no_providers_configured' => 'No providers configured',
			'push_notification.initialize_to_check_permissions' => 'Initialize to check permissions',
			'push_notification.initialize_to_see_tokens' => 'Initialize to see device tokens',
			'push_notification.no_token' => 'No token',
			'push_notification.token_copied' => 'Token copied to clipboard',
			'push_notification.opt_in' => 'Opt In',
			'push_notification.opt_out' => 'Opt Out',
			'push_notification.clear_all_data' => 'Clear All Data',
			'push_notification.enter_topic_name' => 'Enter topic name',
			'push_notification.subscribe' => 'Subscribe',
			'push_notification.no_topics_subscribed' => 'No topics subscribed',
			'push_notification.enter_user_id' => 'Enter user ID',
			'push_notification.set' => 'Set',
			'push_notification.remove_user_id' => 'Remove User ID (Logout)',
			'push_notification.onesignal' => 'OneSignal',
			'push_notification.firebase' => 'Firebase',
			'push_notification.custom' => 'Custom',
			'storage.title' => 'Local Storage',
			'storage.string' => 'String',
			'storage.int' => 'Int',
			'storage.double' => 'Double',
			'storage.bool' => 'Bool',
			'storage.key' => 'key',
			'storage.value' => 'value',
			'storage.true_value' => 'true',
			'storage.false_value' => 'false',
			'hivece_storage.title' => 'HiveCE Storage',
			'hivece_storage.string' => 'String',
			'hivece_storage.int' => 'Int',
			'hivece_storage.double' => 'Double',
			'hivece_storage.bool' => 'Bool',
			'hivece_storage.list_string' => 'List<String>',
			'hivece_storage.get_by_key' => 'Get by Key',
			'hivece_storage.all_items' => 'All Items',
			'hivece_storage.no_items' => 'No items',
			'hivece_storage.key' => 'key',
			'hivece_storage.value' => 'value',
			'hivece_storage.enter_key' => 'enter key',
			'hivece_storage.list_hint' => 'a, b, c',
			'hivece_storage.true_value' => 'true',
			'hivece_storage.false_value' => 'false',
			'hivece_storage.get' => 'Get',
			'share.title' => 'Share',
			'share.share_file' => 'Share File',
			'share.share_text' => 'Share Text',
			'share.enter_text' => 'Enter text',
			'download.title' => 'Download',
			'download.download_file' => 'Download File',
			'download.url' => 'URL',
			'download.filename' => 'Filename',
			'datetime.title' => 'DateTime',
			'datetime.format_date' => 'formatDate()',
			'datetime.format_time' => 'formatTime()',
			'datetime.format_datetime' => 'formatDateTime()',
			'datetime.get_relative_time' => 'getRelativeTime()',
			'datetime.parse_date' => 'parseDate()',
			'url_launcher.title' => 'URL Launcher',
			'url_launcher.url' => 'URL',
			'url_launcher.phone' => 'Phone',
			'url_launcher.email' => 'Email',
			'url_launcher.sms' => 'SMS',
			'url_launcher.launch' => 'Launch',
			'svg_helper.title' => 'SVG Helper',
			'svg_helper.asset_svg' => 'Asset SVG',
			'svg_helper.asset_svg_desc' => 'Load SVG from assets folder',
			'svg_helper.color_tinting' => 'Color Tinting',
			'svg_helper.color_tinting_desc' => 'Change SVG color dynamically',
			'svg_helper.size_variations' => 'Size Variations',
			'svg_helper.size_variations_desc' => 'Different icon sizes',
			'svg_helper.svg_from_string' => 'SVG from String',
			'svg_helper.svg_from_string_desc' => 'Render SVG from raw string data',
			'svg_helper.themed_icon' => 'Themed Icon',
			'svg_helper.themed_icon_desc' => 'Auto-colored from IconTheme',
			'svg_helper.using_svg_config' => 'Using SvgConfig',
			'svg_helper.using_svg_config_desc' => 'Reusable configuration presets',
			'web_viewer.title' => 'Web Viewer Helper',
			'web_viewer.sanitized_html' => 'Sanitized HTML',
			'web_viewer.sanitized_html_desc' => 'WebViewerHelper.html() - Safe for user content',
			'web_viewer.style_presets' => 'Style Presets',
			'web_viewer.style_presets_desc' => 'HtmlStyleConfig factory constructors',
			'web_viewer.extract_text' => 'Extract Text',
			'web_viewer.extract_text_desc' => 'htmlWidget.extractText()',
			'web_viewer.extract_links' => 'Extract Links',
			'web_viewer.extract_links_desc' => 'htmlWidget.extractLinks()',
			'web_viewer.no_links_found' => 'No links found',
			'web_viewer.to_widget' => 'To Widget',
			'web_viewer.to_widget_desc' => 'htmlWidget.toWidget()',
			'web_viewer.web_url_viewer' => 'Web URL Viewer',
			'web_viewer.web_url_viewer_desc' => 'WebViewerHelper.url() - Full WebView with navigation',
			'web_viewer.enter_url' => 'Enter URL...',
			'web_viewer.go' => 'Go',
			'web_viewer.show_navigation' => 'Show Navigation: ',
			'web_viewer.preview' => 'Preview',
			'web_viewer.link_tapped' => 'Link tapped: ',
			'permissions_helper.title' => 'Permissions',
			'permissions_helper.runtime_permissions' => 'Runtime Permissions',
			'permissions_helper.request' => 'Request',
			'permissions_helper.granted' => 'granted',
			'permissions_helper.denied' => 'denied',
			'permissions_helper.unknown' => 'unknown',
			'package_info.title' => 'Package Info',
			'skeleton.title' => 'Skeleton Helper',
			'skeleton.animation' => 'Animation:',
			'skeleton.theme' => 'Theme:',
			'skeleton.light' => 'Light',
			'skeleton.dark' => 'Dark',
			'skeleton.basic_shapes' => 'Basic Shapes',
			'skeleton.text_shapes' => 'Text Shapes',
			'skeleton.avatar_shapes' => 'Avatar Shapes',
			'skeleton.custom_shapes' => 'Custom Shapes',
			'skeleton.rectangle' => 'Rectangle',
			'skeleton.circle' => 'Circle',
			'skeleton.rounded' => 'Rounded',
			'skeleton.text_line' => 'Text Line',
			'skeleton.paragraph' => 'Paragraph',
			'skeleton.small' => 'Small',
			'skeleton.medium' => 'Medium',
			'skeleton.large' => 'Large',
			'skeleton.diamond' => 'Diamond',
			'skeleton.hexagon' => 'Hexagon',
			'skeleton.star' => 'Star',
			'skeleton.list_items' => 'List Items',
			'skeleton.cards' => 'Cards',
			'skeleton.profile' => 'Profile',
			'skeleton.social_post' => 'Social Post',
			'skeleton.stories' => 'Stories',
			'skeleton.product_cards' => 'Product Cards',
			'skeleton.article' => 'Article',
			'skeleton.color_themes' => 'Color Themes',
			'skeleton.dark_theme' => 'Dark Theme',
			'settings_widgets.reset_dialog_title' => 'Reset to Defaults',
			'settings_widgets.reset_dialog_content' => 'This will reset all theme settings to their default values. This action cannot be undone.',
			'settings_widgets.reset' => 'Reset',
			'settings_widgets.show_icons' => 'Show Icons',
			'settings_widgets.toggle_icon_visibility' => 'Toggle icon visibility globally',
			_ => null,
		};
	}
}
