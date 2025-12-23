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
			_ => null,
		};
	}
}
