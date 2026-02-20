///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'package:slang/overrides.dart';
import 'resources.g.dart';

// Path: <root>
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	/// [AppLocaleUtils.buildWithOverrides] is recommended for overriding.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonTr common = _TranslationsCommonTr._(_root);
	@override late final _TranslationsAuthTr auth = _TranslationsAuthTr._(_root);
	@override late final _TranslationsAccountTr account = _TranslationsAccountTr._(_root);
	@override late final _TranslationsOnboardingTr onboarding = _TranslationsOnboardingTr._(_root);
	@override late final _TranslationsPermissionsTr permissions = _TranslationsPermissionsTr._(_root);
	@override late final _TranslationsSearchTr search = _TranslationsSearchTr._(_root);
	@override late final _TranslationsErrorTr error = _TranslationsErrorTr._(_root);
	@override late final _TranslationsSplashTr splash = _TranslationsSplashTr._(_root);
	@override late final _TranslationsEmptyViewTr empty_view = _TranslationsEmptyViewTr._(_root);
	@override late final _TranslationsLoadingTr loading = _TranslationsLoadingTr._(_root);
	@override late final _TranslationsImageDetailTr image_detail = _TranslationsImageDetailTr._(_root);
	@override late final _TranslationsHomeTr home = _TranslationsHomeTr._(_root);
	@override late final _TranslationsProductsTr products = _TranslationsProductsTr._(_root);
	@override late final _TranslationsProfileTr profile = _TranslationsProfileTr._(_root);
	@override late final _TranslationsSettingsTr settings = _TranslationsSettingsTr._(_root);
	@override late final _TranslationsHelpersTr helpers = _TranslationsHelpersTr._(_root);
	@override late final _TranslationsAppConfigTr app_config = _TranslationsAppConfigTr._(_root);
	@override late final _TranslationsDeviceInfoTr device_info = _TranslationsDeviceInfoTr._(_root);
	@override late final _TranslationsForceUpdateTr force_update = _TranslationsForceUpdateTr._(_root);
	@override late final _TranslationsPushNotificationTr push_notification = _TranslationsPushNotificationTr._(_root);
	@override late final _TranslationsStorageTr storage = _TranslationsStorageTr._(_root);
	@override late final _TranslationsHiveceStorageTr hivece_storage = _TranslationsHiveceStorageTr._(_root);
	@override late final _TranslationsShareTr share = _TranslationsShareTr._(_root);
	@override late final _TranslationsDownloadTr download = _TranslationsDownloadTr._(_root);
	@override late final _TranslationsDatetimeTr datetime = _TranslationsDatetimeTr._(_root);
	@override late final _TranslationsUrlLauncherTr url_launcher = _TranslationsUrlLauncherTr._(_root);
	@override late final _TranslationsSvgHelperTr svg_helper = _TranslationsSvgHelperTr._(_root);
	@override late final _TranslationsWebViewerTr web_viewer = _TranslationsWebViewerTr._(_root);
	@override late final _TranslationsPermissionsHelperTr permissions_helper = _TranslationsPermissionsHelperTr._(_root);
	@override late final _TranslationsPackageInfoTr package_info = _TranslationsPackageInfoTr._(_root);
	@override late final _TranslationsSkeletonTr skeleton = _TranslationsSkeletonTr._(_root);
	@override late final _TranslationsSettingsWidgetsTr settings_widgets = _TranslationsSettingsWidgetsTr._(_root);
}

// Path: common
class _TranslationsCommonTr implements TranslationsCommonEn {
	_TranslationsCommonTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get ok => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? 'Tamam';
	@override String get cancel => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? 'İptal';
	@override String get yes => TranslationOverrides.string(_root.$meta, 'common.yes', {}) ?? 'Evet';
	@override String get no => TranslationOverrides.string(_root.$meta, 'common.no', {}) ?? 'Hayır';
	@override String get save => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? 'Kaydet';
	@override String get delete => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? 'Sil';
	@override String get edit => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? 'Düzenle';
	@override String get close => TranslationOverrides.string(_root.$meta, 'common.close', {}) ?? 'Kapat';
	@override String get back => TranslationOverrides.string(_root.$meta, 'common.back', {}) ?? 'Geri';
	@override String get next => TranslationOverrides.string(_root.$meta, 'common.next', {}) ?? 'İleri';
	@override String get previous => TranslationOverrides.string(_root.$meta, 'common.previous', {}) ?? 'Önceki';
	@override String get done => TranslationOverrides.string(_root.$meta, 'common.done', {}) ?? 'Tamamlandı';
	@override String get loading => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? 'Yükleniyor...';
	@override String get error => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? 'Hata';
	@override String get success => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? 'Başarılı';
	@override String get dismiss => TranslationOverrides.string(_root.$meta, 'common.dismiss', {}) ?? 'Kapat';
	@override String get grant => TranslationOverrides.string(_root.$meta, 'common.grant', {}) ?? 'İzin Ver';
	@override String get undo => TranslationOverrides.string(_root.$meta, 'common.undo', {}) ?? 'Geri Al';
	@override String get retry => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? 'Tekrar Dene';
	@override String get refresh => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? 'Yenile';
	@override String get initialize => TranslationOverrides.string(_root.$meta, 'common.initialize', {}) ?? 'Başlat';
	@override String get set => TranslationOverrides.string(_root.$meta, 'common.set', {}) ?? 'Ayarla';
	@override String get subscribe => TranslationOverrides.string(_root.$meta, 'common.subscribe', {}) ?? 'Abone Ol';
	@override String get user => TranslationOverrides.string(_root.$meta, 'common.user', {}) ?? 'Kullanıcı';
}

// Path: auth
class _TranslationsAuthTr implements TranslationsAuthEn {
	_TranslationsAuthTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'auth.title', {}) ?? 'Kimlik Doğrulama';
	@override String get sign_in => TranslationOverrides.string(_root.$meta, 'auth.sign_in', {}) ?? 'Giriş Yap';
	@override String get sign_up => TranslationOverrides.string(_root.$meta, 'auth.sign_up', {}) ?? 'Kayıt Ol';
	@override String get email => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? 'E-posta';
	@override String get password => TranslationOverrides.string(_root.$meta, 'auth.password', {}) ?? 'Şifre';
	@override String get forgot_password => TranslationOverrides.string(_root.$meta, 'auth.forgot_password', {}) ?? 'Şifremi Unuttum?';
	@override String get remember_me => TranslationOverrides.string(_root.$meta, 'auth.remember_me', {}) ?? 'Beni Hatırla';
	@override String get sign_in_failed => TranslationOverrides.string(_root.$meta, 'auth.sign_in_failed', {}) ?? 'Giriş başarısız';
	@override String get sign_up_failed => TranslationOverrides.string(_root.$meta, 'auth.sign_up_failed', {}) ?? 'Kayıt başarısız';
}

// Path: account
class _TranslationsAccountTr implements TranslationsAccountEn {
	_TranslationsAccountTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'account.title', {}) ?? 'Hesap';
	@override String get profile => TranslationOverrides.string(_root.$meta, 'account.profile', {}) ?? 'Profil';
	@override String get settings => TranslationOverrides.string(_root.$meta, 'account.settings', {}) ?? 'Ayarlar';
	@override String get logout => TranslationOverrides.string(_root.$meta, 'account.logout', {}) ?? 'Çıkış Yap';
	@override String get sign_out => TranslationOverrides.string(_root.$meta, 'account.sign_out', {}) ?? 'Çıkış Yap';
}

// Path: onboarding
class _TranslationsOnboardingTr implements TranslationsOnboardingEn {
	_TranslationsOnboardingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get skip => TranslationOverrides.string(_root.$meta, 'onboarding.skip', {}) ?? 'Atla';
	@override String get get_started => TranslationOverrides.string(_root.$meta, 'onboarding.get_started', {}) ?? 'Başlayalım';
	@override String get previous => TranslationOverrides.string(_root.$meta, 'onboarding.previous', {}) ?? 'Önceki';
	@override String get next => TranslationOverrides.string(_root.$meta, 'onboarding.next', {}) ?? 'İleri';
	@override String get no_pages_configured => TranslationOverrides.string(_root.$meta, 'onboarding.no_pages_configured', {}) ?? 'Yapılandırılmış karşılama sayfası yok';
}

// Path: permissions
class _TranslationsPermissionsTr implements TranslationsPermissionsEn {
	_TranslationsPermissionsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'permissions.title', {}) ?? 'İzinler Gerekli';
	@override String get description => TranslationOverrides.string(_root.$meta, 'permissions.description', {}) ?? 'Bu uygulama düzgün çalışmak için belirli izinlere ihtiyaç duyar.';
	@override String get grant => TranslationOverrides.string(_root.$meta, 'permissions.grant', {}) ?? 'İzin Ver';
	@override String get grant_all => TranslationOverrides.string(_root.$meta, 'permissions.grant_all', {}) ?? 'Tüm İzinleri Ver';
	@override String get denied => TranslationOverrides.string(_root.$meta, 'permissions.denied', {}) ?? 'İzin Reddedildi';
	@override String get request_permissions => TranslationOverrides.string(_root.$meta, 'permissions.request_permissions', {}) ?? 'İzin İste';
}

// Path: search
class _TranslationsSearchTr implements TranslationsSearchEn {
	_TranslationsSearchTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get hint => TranslationOverrides.string(_root.$meta, 'search.hint', {}) ?? 'Ara...';
	@override String get no_results => TranslationOverrides.string(_root.$meta, 'search.no_results', {}) ?? 'Sonuç bulunamadı';
}

// Path: error
class _TranslationsErrorTr implements TranslationsErrorEn {
	_TranslationsErrorTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get generic => TranslationOverrides.string(_root.$meta, 'error.generic', {}) ?? 'Bir şeyler yanlış gitti. Lütfen tekrar deneyin.';
	@override String get network => TranslationOverrides.string(_root.$meta, 'error.network', {}) ?? 'Ağ hatası. Lütfen bağlantınızı kontrol edin.';
	@override String get unauthorized => TranslationOverrides.string(_root.$meta, 'error.unauthorized', {}) ?? 'Bu işlemi gerçekleştirmek için yetkiniz yok.';
	@override String get error_code => TranslationOverrides.string(_root.$meta, 'error.error_code', {}) ?? 'Hata Kodu';
}

// Path: splash
class _TranslationsSplashTr implements TranslationsSplashEn {
	_TranslationsSplashTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get loading => TranslationOverrides.string(_root.$meta, 'splash.loading', {}) ?? 'Yükleniyor...';
	@override String get webview => TranslationOverrides.string(_root.$meta, 'splash.webview', {}) ?? 'Web Görünümü';
	@override String get error => TranslationOverrides.string(_root.$meta, 'splash.error', {}) ?? 'Hata oluştu';
	@override String get maintenance => TranslationOverrides.string(_root.$meta, 'splash.maintenance', {}) ?? 'Bakımda';
	@override String get empty => TranslationOverrides.string(_root.$meta, 'splash.empty', {}) ?? 'Veri mevcut değil';
	@override String get unauthorized => TranslationOverrides.string(_root.$meta, 'splash.unauthorized', {}) ?? 'Yetkisiz';
	@override String get timeout => TranslationOverrides.string(_root.$meta, 'splash.timeout', {}) ?? 'İstek zaman aşımına uğradı';
}

// Path: empty_view
class _TranslationsEmptyViewTr implements TranslationsEmptyViewEn {
	_TranslationsEmptyViewTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'empty_view.title', {}) ?? 'İçerik mevcut değil';
	@override String get description => TranslationOverrides.string(_root.$meta, 'empty_view.description', {}) ?? 'Burada gösterilecek bir şey yok.';
}

// Path: loading
class _TranslationsLoadingTr implements TranslationsLoadingEn {
	_TranslationsLoadingTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get loading => TranslationOverrides.string(_root.$meta, 'loading.loading', {}) ?? 'Yükleniyor...';
}

// Path: image_detail
class _TranslationsImageDetailTr implements TranslationsImageDetailEn {
	_TranslationsImageDetailTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'image_detail.title', {}) ?? 'Resim';
}

// Path: home
class _TranslationsHomeTr implements TranslationsHomeEn {
	_TranslationsHomeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'home.title', {}) ?? 'MasterFabric Core';
	@override String get description => TranslationOverrides.string(_root.$meta, 'home.description', {}) ?? 'Önceden oluşturulmuş bileşenler, durum yönetimi desenleri ve yardımcı araçlarla ölçeklenebilir, bakımı kolay mobil uygulamalar oluşturmak için kapsamlı bir Flutter çerçevesi.';
	@override String get home_view_hidden => TranslationOverrides.string(_root.$meta, 'home.home_view_hidden', {}) ?? 'Ana sayfa görünümü gizli';
	@override String get show_home_view => TranslationOverrides.string(_root.$meta, 'home.show_home_view', {}) ?? 'Ana Sayfa Görünümünü Göster';
	@override String get quick_navigation => TranslationOverrides.string(_root.$meta, 'home.quick_navigation', {}) ?? 'Hızlı Navigasyon';
	@override String get architecture => TranslationOverrides.string(_root.$meta, 'home.architecture', {}) ?? 'Mimari';
	@override String get core_features => TranslationOverrides.string(_root.$meta, 'home.core_features', {}) ?? 'Temel Özellikler';
	@override String get helper_modules => TranslationOverrides.string(_root.$meta, 'home.helper_modules', {}) ?? 'Yardımcı Modüller';
	@override String get getting_started => TranslationOverrides.string(_root.$meta, 'home.getting_started', {}) ?? 'Başlangıç';
	@override String get products => TranslationOverrides.string(_root.$meta, 'home.products', {}) ?? 'Ürünler';
	@override String get products_subtitle => TranslationOverrides.string(_root.$meta, 'home.products_subtitle', {}) ?? 'Arama ile örnek ürün listesi';
	@override String get profile => TranslationOverrides.string(_root.$meta, 'home.profile', {}) ?? 'Profil';
	@override String get profile_subtitle => TranslationOverrides.string(_root.$meta, 'home.profile_subtitle', {}) ?? 'Cihaz bilgisi ile kullanıcı profili';
	@override String get helper_cases => TranslationOverrides.string(_root.$meta, 'home.helper_cases', {}) ?? 'Yardımcı Örnekler';
	@override String get helper_cases_subtitle => TranslationOverrides.string(_root.$meta, 'home.helper_cases_subtitle', {}) ?? 'Tüm yardımcı araçları keşfet';
	@override String get masterview_cubit => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit', {}) ?? 'MasterViewCubit';
	@override String get masterview_cubit_desc => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit_desc', {}) ?? 'Entegre Cubit durum yönetimi, yaşam döngüsü kancaları ve ortak UI desenleri ile temel görünüm sınıfı.';
	@override String get base_viewmodel_cubit => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit', {}) ?? 'BaseViewModelCubit';
	@override String get base_viewmodel_cubit_desc => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit_desc', {}) ?? 'Temiz durum geçişleri ve iş mantığı ayrımı için stateChanger deseni ile genişletilmiş Cubit.';
	@override String get injectable_di => TranslationOverrides.string(_root.$meta, 'home.injectable_di', {}) ?? 'Injectable DI';
	@override String get injectable_di_desc => TranslationOverrides.string(_root.$meta, 'home.injectable_di_desc', {}) ?? 'Temiz servis çözümlemesi için GetIt ve injectable açıklamaları ile otomatik bağımlılık enjeksiyonu.';
	@override String get gorouter_navigation => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation', {}) ?? 'GoRouter Navigasyon';
	@override String get gorouter_navigation_desc => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation_desc', {}) ?? 'Tür güvenli navigasyon, derin bağlantı ve rota korumaları desteği ile bildirimsel yönlendirme.';
	@override String get state_management => TranslationOverrides.string(_root.$meta, 'home.state_management', {}) ?? 'Durum Yönetimi';
	@override String get state_management_desc => TranslationOverrides.string(_root.$meta, 'home.state_management_desc', {}) ?? 'Cubit, HydratedCubit, BLoC desenleri';
	@override String get prebuilt_views => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views', {}) ?? 'Önceden Oluşturulmuş Görünümler';
	@override String get prebuilt_views_desc => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views_desc', {}) ?? 'Splash, Auth, Onboarding, Error, Empty';
	@override String get storage_solutions => TranslationOverrides.string(_root.$meta, 'home.storage_solutions', {}) ?? 'Depolama Çözümleri';
	@override String get storage_solutions_desc => TranslationOverrides.string(_root.$meta, 'home.storage_solutions_desc', {}) ?? 'SharedPreferences, HiveCE, Güvenli Depolama';
	@override String get theme_system => TranslationOverrides.string(_root.$meta, 'home.theme_system', {}) ?? 'Tema Sistemi';
	@override String get theme_system_desc => TranslationOverrides.string(_root.$meta, 'home.theme_system_desc', {}) ?? 'Açık/Koyu temalar, özel stil';
	@override String get localization => TranslationOverrides.string(_root.$meta, 'home.localization', {}) ?? 'Yerelleştirme';
	@override String get localization_desc => TranslationOverrides.string(_root.$meta, 'home.localization_desc', {}) ?? 'slang ile i18n desteği';
	@override String get push_notifications => TranslationOverrides.string(_root.$meta, 'home.push_notifications', {}) ?? 'Anlık Bildirimler';
	@override String get push_notifications_desc => TranslationOverrides.string(_root.$meta, 'home.push_notifications_desc', {}) ?? 'OneSignal ve Firebase FCM entegrasyonu';
	@override String get webviewer => TranslationOverrides.string(_root.$meta, 'home.webviewer', {}) ?? 'Web Görüntüleyici';
	@override String get webviewer_desc => TranslationOverrides.string(_root.$meta, 'home.webviewer_desc', {}) ?? 'HTML oluşturma ve WebView desteği';
	@override String get svg_helper => TranslationOverrides.string(_root.$meta, 'home.svg_helper', {}) ?? 'SVG Yardımcısı';
	@override String get svg_helper_desc => TranslationOverrides.string(_root.$meta, 'home.svg_helper_desc', {}) ?? 'Varlık, ağ, dize SVG kaynakları';
	@override String get force_update => TranslationOverrides.string(_root.$meta, 'home.force_update', {}) ?? 'Zorunlu Güncelleme';
	@override String get force_update_desc => TranslationOverrides.string(_root.$meta, 'home.force_update_desc', {}) ?? 'Sürüm kontrolü ve mağaza yönlendirmesi';
	@override String get skeleton_loading => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading', {}) ?? 'İskelet Yükleme';
	@override String get skeleton_loading_desc => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading_desc', {}) ?? 'Yükleme durumları için 10 animasyon stili';
	@override String get utilities => TranslationOverrides.string(_root.$meta, 'home.utilities', {}) ?? 'Yardımcı Programlar';
	@override String get utilities_desc => TranslationOverrides.string(_root.$meta, 'home.utilities_desc', {}) ?? 'DateTime, URL, Paylaş, İndir, İzinler';
	@override String get add_dependency => TranslationOverrides.string(_root.$meta, 'home.add_dependency', {}) ?? 'Bağımlılık ekle';
	@override String get initialize_main => TranslationOverrides.string(_root.$meta, 'home.initialize_main', {}) ?? 'main.dart içinde başlat';
	@override String get create_views => TranslationOverrides.string(_root.$meta, 'home.create_views', {}) ?? 'MasterViewCubit\'i genişleten görünümler oluştur';
	@override String get configure_routes => TranslationOverrides.string(_root.$meta, 'home.configure_routes', {}) ?? 'GoRouter ile rotaları yapılandır';
	@override String get built_with => TranslationOverrides.string(_root.$meta, 'home.built_with', {}) ?? 'MasterFabric Core ile oluşturuldu';
	@override String get flutter_framework => TranslationOverrides.string(_root.$meta, 'home.flutter_framework', {}) ?? 'Kurumsal Uygulamalar için Flutter Çerçevesi';
}

// Path: products
class _TranslationsProductsTr implements TranslationsProductsEn {
	_TranslationsProductsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'products.title', {}) ?? 'Ürünler';
	@override String get products_view_hidden => TranslationOverrides.string(_root.$meta, 'products.products_view_hidden', {}) ?? 'Ürünler görünümü gizli';
	@override String get show_products_view => TranslationOverrides.string(_root.$meta, 'products.show_products_view', {}) ?? 'Ürünler Görünümünü Göster';
	@override String get no_products => TranslationOverrides.string(_root.$meta, 'products.no_products', {}) ?? 'Ürün yok';
	@override String get no_results => TranslationOverrides.string(_root.$meta, 'products.no_results', {}) ?? 'Sonuç yok';
}

// Path: profile
class _TranslationsProfileTr implements TranslationsProfileEn {
	_TranslationsProfileTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? 'Profil';
	@override String get profile_view_hidden => TranslationOverrides.string(_root.$meta, 'profile.profile_view_hidden', {}) ?? 'Profil görünümü gizli';
	@override String get show_profile_view => TranslationOverrides.string(_root.$meta, 'profile.show_profile_view', {}) ?? 'Profil Görünümünü Göster';
	@override String get device => TranslationOverrides.string(_root.$meta, 'profile.device', {}) ?? 'Cihaz';
	@override String get actions => TranslationOverrides.string(_root.$meta, 'profile.actions', {}) ?? 'İşlemler';
	@override String get platform => TranslationOverrides.string(_root.$meta, 'profile.platform', {}) ?? 'platform';
	@override String get device_id => TranslationOverrides.string(_root.$meta, 'profile.device_id', {}) ?? 'cihaz_id';
	@override String get manufacturer => TranslationOverrides.string(_root.$meta, 'profile.manufacturer', {}) ?? 'üretici';
}

// Path: settings
class _TranslationsSettingsTr implements TranslationsSettingsEn {
	_TranslationsSettingsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Ayarlar';
	@override String get theme_mode => TranslationOverrides.string(_root.$meta, 'settings.theme_mode', {}) ?? 'Tema Modu';
	@override String get font_size => TranslationOverrides.string(_root.$meta, 'settings.font_size', {}) ?? 'Yazı Boyutu';
	@override String get colors => TranslationOverrides.string(_root.$meta, 'settings.colors', {}) ?? 'Renkler';
	@override String get view_visibility => TranslationOverrides.string(_root.$meta, 'settings.view_visibility', {}) ?? 'Görünüm Görünürlüğü';
	@override String get icons => TranslationOverrides.string(_root.$meta, 'settings.icons', {}) ?? 'İkonlar';
	@override String get permissions => TranslationOverrides.string(_root.$meta, 'settings.permissions', {}) ?? 'İzinler';
	@override String get manage_permissions => TranslationOverrides.string(_root.$meta, 'settings.manage_permissions', {}) ?? 'Uygulama izinlerini ve çalışma zamanı erişimini yönetin';
	@override String get request_permissions_again => TranslationOverrides.string(_root.$meta, 'settings.request_permissions_again', {}) ?? 'İzinleri tekrar iste';
	@override String get open_app_settings => TranslationOverrides.string(_root.$meta, 'settings.open_app_settings', {}) ?? 'Uygulama ayarlarını aç';
	@override String get language => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? 'Dil';
	@override String get reset_to_defaults => TranslationOverrides.string(_root.$meta, 'settings.reset_to_defaults', {}) ?? 'Varsayılanlara Sıfırla';
	@override String get restore_theme_settings => TranslationOverrides.string(_root.$meta, 'settings.restore_theme_settings', {}) ?? 'Tüm tema ayarlarını geri yükle';
	@override String get light => TranslationOverrides.string(_root.$meta, 'settings.light', {}) ?? 'Açık';
	@override String get dark => TranslationOverrides.string(_root.$meta, 'settings.dark', {}) ?? 'Koyu';
	@override String get english => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? 'İngilizce';
	@override String get turkish => TranslationOverrides.string(_root.$meta, 'settings.turkish', {}) ?? 'Türkçe';
	@override String get spanish => TranslationOverrides.string(_root.$meta, 'settings.spanish', {}) ?? 'İspanyolca';
}

// Path: helpers
class _TranslationsHelpersTr implements TranslationsHelpersEn {
	_TranslationsHelpersTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'helpers.title', {}) ?? 'Yardımcılar';
	@override String get core_utilities => TranslationOverrides.string(_root.$meta, 'helpers.core_utilities', {}) ?? 'Temel Yardımcı Programlar';
	@override String get device_info => TranslationOverrides.string(_root.$meta, 'helpers.device_info', {}) ?? 'Cihaz Bilgisi';
	@override String get local_storage => TranslationOverrides.string(_root.$meta, 'helpers.local_storage', {}) ?? 'Yerel Depolama';
	@override String get hivece => TranslationOverrides.string(_root.$meta, 'helpers.hivece', {}) ?? 'HiveCE';
	@override String get date_time => TranslationOverrides.string(_root.$meta, 'helpers.date_time', {}) ?? 'Tarih ve Saat';
	@override String get url_launcher => TranslationOverrides.string(_root.$meta, 'helpers.url_launcher', {}) ?? 'URL Başlatıcı';
	@override String get permissions => TranslationOverrides.string(_root.$meta, 'helpers.permissions', {}) ?? 'İzinler';
	@override String get share => TranslationOverrides.string(_root.$meta, 'helpers.share', {}) ?? 'Paylaş';
	@override String get file_download => TranslationOverrides.string(_root.$meta, 'helpers.file_download', {}) ?? 'Dosya İndirme';
	@override String get app_config => TranslationOverrides.string(_root.$meta, 'helpers.app_config', {}) ?? 'Uygulama Yapılandırması';
	@override String get package_info => TranslationOverrides.string(_root.$meta, 'helpers.package_info', {}) ?? 'Paket Bilgisi';
	@override String get svg_helper => TranslationOverrides.string(_root.$meta, 'helpers.svg_helper', {}) ?? 'SVG Yardımcısı';
	@override String get web_viewer => TranslationOverrides.string(_root.$meta, 'helpers.web_viewer', {}) ?? 'Web Görüntüleyici';
	@override String get push_notifications => TranslationOverrides.string(_root.$meta, 'helpers.push_notifications', {}) ?? 'Anlık Bildirimler';
	@override String get force_update => TranslationOverrides.string(_root.$meta, 'helpers.force_update', {}) ?? 'Zorunlu Güncelleme';
	@override String get skeleton_loading => TranslationOverrides.string(_root.$meta, 'helpers.skeleton_loading', {}) ?? 'İskelet Yükleme';
}

// Path: app_config
class _TranslationsAppConfigTr implements TranslationsAppConfigEn {
	_TranslationsAppConfigTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'app_config.title', {}) ?? 'Uygulama Yapılandırması';
	@override String get app_settings => TranslationOverrides.string(_root.$meta, 'app_config.app_settings', {}) ?? 'appSettings';
	@override String get ui_configuration => TranslationOverrides.string(_root.$meta, 'app_config.ui_configuration', {}) ?? 'uiConfiguration';
	@override String get splash_configuration => TranslationOverrides.string(_root.$meta, 'app_config.splash_configuration', {}) ?? 'splashConfiguration';
	@override String get api_configuration => TranslationOverrides.string(_root.$meta, 'app_config.api_configuration', {}) ?? 'apiConfiguration';
	@override String get storage_configuration => TranslationOverrides.string(_root.$meta, 'app_config.storage_configuration', {}) ?? 'storageConfiguration';
	@override String get null_value => TranslationOverrides.string(_root.$meta, 'app_config.null_value', {}) ?? 'null';
	@override String get items => TranslationOverrides.string(_root.$meta, 'app_config.items', {}) ?? 'öğeler';
	@override String get keys => TranslationOverrides.string(_root.$meta, 'app_config.keys', {}) ?? 'anahtarlar';
	@override String get config_file_path => TranslationOverrides.string(_root.$meta, 'app_config.config_file_path', {}) ?? 'assets/app_config.json';
}

// Path: device_info
class _TranslationsDeviceInfoTr implements TranslationsDeviceInfoEn {
	_TranslationsDeviceInfoTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'device_info.title', {}) ?? 'Cihaz Bilgisi';
	@override String get platform => TranslationOverrides.string(_root.$meta, 'device_info.platform', {}) ?? 'platform';
	@override String get device_name => TranslationOverrides.string(_root.$meta, 'device_info.device_name', {}) ?? 'cihaz_adı';
	@override String get device_id => TranslationOverrides.string(_root.$meta, 'device_info.device_id', {}) ?? 'cihaz_id';
	@override String get manufacturer => TranslationOverrides.string(_root.$meta, 'device_info.manufacturer', {}) ?? 'üretici';
	@override String get model => TranslationOverrides.string(_root.$meta, 'device_info.model', {}) ?? 'model';
	@override String get system_version => TranslationOverrides.string(_root.$meta, 'device_info.system_version', {}) ?? 'sistem_sürümü';
}

// Path: force_update
class _TranslationsForceUpdateTr implements TranslationsForceUpdateEn {
	_TranslationsForceUpdateTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'force_update.title', {}) ?? 'Zorunlu Güncelleme';
	@override String get status => TranslationOverrides.string(_root.$meta, 'force_update.status', {}) ?? 'Durum';
	@override String get preview_ui_type => TranslationOverrides.string(_root.$meta, 'force_update.preview_ui_type', {}) ?? 'Önizleme UI Türü';
	@override String get simulation_mode => TranslationOverrides.string(_root.$meta, 'force_update.simulation_mode', {}) ?? 'Simülasyon Modu';
	@override String get preview_update_ui => TranslationOverrides.string(_root.$meta, 'force_update.preview_update_ui', {}) ?? 'Güncelleme UI Önizlemesi';
	@override String get version_comparison => TranslationOverrides.string(_root.$meta, 'force_update.version_comparison', {}) ?? 'Sürüm Karşılaştırması';
	@override String get initialized => TranslationOverrides.string(_root.$meta, 'force_update.initialized', {}) ?? 'Başlatıldı';
	@override String get not_initialized => TranslationOverrides.string(_root.$meta, 'force_update.not_initialized', {}) ?? 'Başlatılmadı';
	@override String get app_version => TranslationOverrides.string(_root.$meta, 'force_update.app_version', {}) ?? 'Uygulama Sürümü';
	@override String get check_update => TranslationOverrides.string(_root.$meta, 'force_update.check_update', {}) ?? 'Güncellemeyi Kontrol Et';
	@override String get open_store => TranslationOverrides.string(_root.$meta, 'force_update.open_store', {}) ?? 'Mağazayı Aç';
	@override String get alert_dialog => TranslationOverrides.string(_root.$meta, 'force_update.alert_dialog', {}) ?? 'Uyarı Diyaloğu';
	@override String get bottom_sheet => TranslationOverrides.string(_root.$meta, 'force_update.bottom_sheet', {}) ?? 'Alt Sayfa';
	@override String get full_screen => TranslationOverrides.string(_root.$meta, 'force_update.full_screen', {}) ?? 'Tam Ekran';
	@override String get compact_dialog_overlay => TranslationOverrides.string(_root.$meta, 'force_update.compact_dialog_overlay', {}) ?? 'Kompakt diyalog katmanı';
	@override String get modal_from_bottom => TranslationOverrides.string(_root.$meta, 'force_update.modal_from_bottom', {}) ?? 'Alttan modal';
	@override String get blocking_full_page => TranslationOverrides.string(_root.$meta, 'force_update.blocking_full_page', {}) ?? 'Engelleyici tam sayfa';
	@override String get use_simulation => TranslationOverrides.string(_root.$meta, 'force_update.use_simulation', {}) ?? 'Simülasyon Kullan';
	@override String get current_version => TranslationOverrides.string(_root.$meta, 'force_update.current_version', {}) ?? 'Mevcut Sürüm';
	@override String get latest_version => TranslationOverrides.string(_root.$meta, 'force_update.latest_version', {}) ?? 'En Son Sürüm';
	@override String get minimum_version => TranslationOverrides.string(_root.$meta, 'force_update.minimum_version', {}) ?? 'Minimum Sürüm';
	@override String get simulation_tip => TranslationOverrides.string(_root.$meta, 'force_update.simulation_tip', {}) ?? 'İpucu: Zorunlu güncelleme için minimum > mevcut ayarla';
	@override String get optional_update => TranslationOverrides.string(_root.$meta, 'force_update.optional_update', {}) ?? 'İsteğe Bağlı Güncelleme';
	@override String get optional_update_desc => TranslationOverrides.string(_root.$meta, 'force_update.optional_update_desc', {}) ?? 'Kapatılabilir güncelleme istemi göster';
	@override String get recommended_update => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update', {}) ?? 'Önerilen Güncelleme';
	@override String get recommended_update_desc => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update_desc', {}) ?? 'Önerilen güncelleme istemi göster';
	@override String get force_update_desc => TranslationOverrides.string(_root.$meta, 'force_update.force_update_desc', {}) ?? 'Engelleyici güncelleme ekranı göster';
	@override String get version_comparator_examples => TranslationOverrides.string(_root.$meta, 'force_update.version_comparator_examples', {}) ?? 'Sürüm Karşılaştırıcı Örnekleri';
	@override String get older => TranslationOverrides.string(_root.$meta, 'force_update.older', {}) ?? 'eski';
	@override String get newer => TranslationOverrides.string(_root.$meta, 'force_update.newer', {}) ?? 'yeni';
	@override String get equal => TranslationOverrides.string(_root.$meta, 'force_update.equal', {}) ?? 'eşit';
	@override String get older_prerelease => TranslationOverrides.string(_root.$meta, 'force_update.older_prerelease', {}) ?? 'eski (ön sürüm)';
	@override String get older_build => TranslationOverrides.string(_root.$meta, 'force_update.older_build', {}) ?? 'eski (derleme)';
}

// Path: push_notification
class _TranslationsPushNotificationTr implements TranslationsPushNotificationEn {
	_TranslationsPushNotificationTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'push_notification.title', {}) ?? 'Anlık Bildirimler';
	@override String get status => TranslationOverrides.string(_root.$meta, 'push_notification.status', {}) ?? 'Durum';
	@override String get active_providers => TranslationOverrides.string(_root.$meta, 'push_notification.active_providers', {}) ?? 'Aktif Sağlayıcılar';
	@override String get permissions => TranslationOverrides.string(_root.$meta, 'push_notification.permissions', {}) ?? 'İzinler';
	@override String get device_tokens => TranslationOverrides.string(_root.$meta, 'push_notification.device_tokens', {}) ?? 'Cihaz Token\'ları';
	@override String get topic_subscriptions => TranslationOverrides.string(_root.$meta, 'push_notification.topic_subscriptions', {}) ?? 'Konu Abonelikleri';
	@override String get user_targeting => TranslationOverrides.string(_root.$meta, 'push_notification.user_targeting', {}) ?? 'Kullanıcı Hedefleme';
	@override String get actions => TranslationOverrides.string(_root.$meta, 'push_notification.actions', {}) ?? 'İşlemler';
	@override String get initialized => TranslationOverrides.string(_root.$meta, 'push_notification.initialized', {}) ?? 'Başlatıldı';
	@override String get not_initialized => TranslationOverrides.string(_root.$meta, 'push_notification.not_initialized', {}) ?? 'Başlatılmadı';
	@override String get providers_active => TranslationOverrides.string(_root.$meta, 'push_notification.providers_active', {}) ?? 'sağlayıcı aktif';
	@override String get tap_to_initialize => TranslationOverrides.string(_root.$meta, 'push_notification.tap_to_initialize', {}) ?? 'Başlatmak için dokunun';
	@override String get initialize_to_see_providers => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_providers', {}) ?? 'Aktif sağlayıcıları görmek için başlat';
	@override String get no_providers_configured => TranslationOverrides.string(_root.$meta, 'push_notification.no_providers_configured', {}) ?? 'Yapılandırılmış sağlayıcı yok';
	@override String get initialize_to_check_permissions => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_check_permissions', {}) ?? 'İzinleri kontrol etmek için başlat';
	@override String get initialize_to_see_tokens => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_tokens', {}) ?? 'Cihaz token\'larını görmek için başlat';
	@override String get no_token => TranslationOverrides.string(_root.$meta, 'push_notification.no_token', {}) ?? 'Token yok';
	@override String get token_copied => TranslationOverrides.string(_root.$meta, 'push_notification.token_copied', {}) ?? 'Token panoya kopyalandı';
	@override String get opt_in => TranslationOverrides.string(_root.$meta, 'push_notification.opt_in', {}) ?? 'Katıl';
	@override String get opt_out => TranslationOverrides.string(_root.$meta, 'push_notification.opt_out', {}) ?? 'Ayrıl';
	@override String get clear_all_data => TranslationOverrides.string(_root.$meta, 'push_notification.clear_all_data', {}) ?? 'Tüm Verileri Temizle';
	@override String get enter_topic_name => TranslationOverrides.string(_root.$meta, 'push_notification.enter_topic_name', {}) ?? 'Konu adı girin';
	@override String get subscribe => TranslationOverrides.string(_root.$meta, 'push_notification.subscribe', {}) ?? 'Abone Ol';
	@override String get no_topics_subscribed => TranslationOverrides.string(_root.$meta, 'push_notification.no_topics_subscribed', {}) ?? 'Abone olunan konu yok';
	@override String get enter_user_id => TranslationOverrides.string(_root.$meta, 'push_notification.enter_user_id', {}) ?? 'Kullanıcı ID\'si girin';
	@override String get set => TranslationOverrides.string(_root.$meta, 'push_notification.set', {}) ?? 'Ayarla';
	@override String get remove_user_id => TranslationOverrides.string(_root.$meta, 'push_notification.remove_user_id', {}) ?? 'Kullanıcı ID\'sini Kaldır (Çıkış)';
	@override String get onesignal => TranslationOverrides.string(_root.$meta, 'push_notification.onesignal', {}) ?? 'OneSignal';
	@override String get firebase => TranslationOverrides.string(_root.$meta, 'push_notification.firebase', {}) ?? 'Firebase';
	@override String get custom => TranslationOverrides.string(_root.$meta, 'push_notification.custom', {}) ?? 'Özel';
}

// Path: storage
class _TranslationsStorageTr implements TranslationsStorageEn {
	_TranslationsStorageTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'storage.title', {}) ?? 'Yerel Depolama';
	@override String get string => TranslationOverrides.string(_root.$meta, 'storage.string', {}) ?? 'String';
	@override String get int => TranslationOverrides.string(_root.$meta, 'storage.int', {}) ?? 'Int';
	@override String get double => TranslationOverrides.string(_root.$meta, 'storage.double', {}) ?? 'Double';
	@override String get bool => TranslationOverrides.string(_root.$meta, 'storage.bool', {}) ?? 'Bool';
	@override String get key => TranslationOverrides.string(_root.$meta, 'storage.key', {}) ?? 'anahtar';
	@override String get value => TranslationOverrides.string(_root.$meta, 'storage.value', {}) ?? 'değer';
	@override String get true_value => TranslationOverrides.string(_root.$meta, 'storage.true_value', {}) ?? 'doğru';
	@override String get false_value => TranslationOverrides.string(_root.$meta, 'storage.false_value', {}) ?? 'yanlış';
}

// Path: hivece_storage
class _TranslationsHiveceStorageTr implements TranslationsHiveceStorageEn {
	_TranslationsHiveceStorageTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'hivece_storage.title', {}) ?? 'HiveCE Depolama';
	@override String get string => TranslationOverrides.string(_root.$meta, 'hivece_storage.string', {}) ?? 'String';
	@override String get int => TranslationOverrides.string(_root.$meta, 'hivece_storage.int', {}) ?? 'Int';
	@override String get double => TranslationOverrides.string(_root.$meta, 'hivece_storage.double', {}) ?? 'Double';
	@override String get bool => TranslationOverrides.string(_root.$meta, 'hivece_storage.bool', {}) ?? 'Bool';
	@override String get list_string => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_string', {}) ?? 'List<String>';
	@override String get get_by_key => TranslationOverrides.string(_root.$meta, 'hivece_storage.get_by_key', {}) ?? 'Anahtara Göre Al';
	@override String get all_items => TranslationOverrides.string(_root.$meta, 'hivece_storage.all_items', {}) ?? 'Tüm Öğeler';
	@override String get no_items => TranslationOverrides.string(_root.$meta, 'hivece_storage.no_items', {}) ?? 'Öğe yok';
	@override String get key => TranslationOverrides.string(_root.$meta, 'hivece_storage.key', {}) ?? 'anahtar';
	@override String get value => TranslationOverrides.string(_root.$meta, 'hivece_storage.value', {}) ?? 'değer';
	@override String get enter_key => TranslationOverrides.string(_root.$meta, 'hivece_storage.enter_key', {}) ?? 'anahtar girin';
	@override String get list_hint => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_hint', {}) ?? 'a, b, c';
	@override String get true_value => TranslationOverrides.string(_root.$meta, 'hivece_storage.true_value', {}) ?? 'doğru';
	@override String get false_value => TranslationOverrides.string(_root.$meta, 'hivece_storage.false_value', {}) ?? 'yanlış';
	@override String get get => TranslationOverrides.string(_root.$meta, 'hivece_storage.get', {}) ?? 'Al';
}

// Path: share
class _TranslationsShareTr implements TranslationsShareEn {
	_TranslationsShareTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'share.title', {}) ?? 'Paylaş';
	@override String get share_file => TranslationOverrides.string(_root.$meta, 'share.share_file', {}) ?? 'Dosya Paylaş';
	@override String get share_text => TranslationOverrides.string(_root.$meta, 'share.share_text', {}) ?? 'Metin Paylaş';
	@override String get enter_text => TranslationOverrides.string(_root.$meta, 'share.enter_text', {}) ?? 'Metin girin';
}

// Path: download
class _TranslationsDownloadTr implements TranslationsDownloadEn {
	_TranslationsDownloadTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'download.title', {}) ?? 'İndirme';
	@override String get download_file => TranslationOverrides.string(_root.$meta, 'download.download_file', {}) ?? 'Dosya İndir';
	@override String get url => TranslationOverrides.string(_root.$meta, 'download.url', {}) ?? 'URL';
	@override String get filename => TranslationOverrides.string(_root.$meta, 'download.filename', {}) ?? 'Dosya Adı';
}

// Path: datetime
class _TranslationsDatetimeTr implements TranslationsDatetimeEn {
	_TranslationsDatetimeTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'datetime.title', {}) ?? 'Tarih ve Saat';
	@override String get format_date => TranslationOverrides.string(_root.$meta, 'datetime.format_date', {}) ?? 'formatDate()';
	@override String get format_time => TranslationOverrides.string(_root.$meta, 'datetime.format_time', {}) ?? 'formatTime()';
	@override String get format_datetime => TranslationOverrides.string(_root.$meta, 'datetime.format_datetime', {}) ?? 'formatDateTime()';
	@override String get get_relative_time => TranslationOverrides.string(_root.$meta, 'datetime.get_relative_time', {}) ?? 'getRelativeTime()';
	@override String get parse_date => TranslationOverrides.string(_root.$meta, 'datetime.parse_date', {}) ?? 'parseDate()';
}

// Path: url_launcher
class _TranslationsUrlLauncherTr implements TranslationsUrlLauncherEn {
	_TranslationsUrlLauncherTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'url_launcher.title', {}) ?? 'URL Başlatıcı';
	@override String get url => TranslationOverrides.string(_root.$meta, 'url_launcher.url', {}) ?? 'URL';
	@override String get phone => TranslationOverrides.string(_root.$meta, 'url_launcher.phone', {}) ?? 'Telefon';
	@override String get email => TranslationOverrides.string(_root.$meta, 'url_launcher.email', {}) ?? 'E-posta';
	@override String get sms => TranslationOverrides.string(_root.$meta, 'url_launcher.sms', {}) ?? 'SMS';
	@override String get launch => TranslationOverrides.string(_root.$meta, 'url_launcher.launch', {}) ?? 'Başlat';
}

// Path: svg_helper
class _TranslationsSvgHelperTr implements TranslationsSvgHelperEn {
	_TranslationsSvgHelperTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'svg_helper.title', {}) ?? 'SVG Yardımcısı';
	@override String get asset_svg => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg', {}) ?? 'Varlık SVG';
	@override String get asset_svg_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg_desc', {}) ?? 'Varlıklar klasöründen SVG yükle';
	@override String get color_tinting => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting', {}) ?? 'Renk Tonlama';
	@override String get color_tinting_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting_desc', {}) ?? 'SVG rengini dinamik olarak değiştir';
	@override String get size_variations => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations', {}) ?? 'Boyut Varyasyonları';
	@override String get size_variations_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations_desc', {}) ?? 'Farklı ikon boyutları';
	@override String get svg_from_string => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string', {}) ?? 'Dizeden SVG';
	@override String get svg_from_string_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string_desc', {}) ?? 'Ham dize verilerinden SVG oluştur';
	@override String get themed_icon => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon', {}) ?? 'Temalı İkon';
	@override String get themed_icon_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon_desc', {}) ?? 'IconTheme\'den otomatik renklendirilmiş';
	@override String get using_svg_config => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config', {}) ?? 'SvgConfig Kullanımı';
	@override String get using_svg_config_desc => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config_desc', {}) ?? 'Yeniden kullanılabilir yapılandırma ön ayarları';
}

// Path: web_viewer
class _TranslationsWebViewerTr implements TranslationsWebViewerEn {
	_TranslationsWebViewerTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'web_viewer.title', {}) ?? 'Web Görüntüleyici Yardımcısı';
	@override String get sanitized_html => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html', {}) ?? 'Temizlenmiş HTML';
	@override String get sanitized_html_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html_desc', {}) ?? 'WebViewerHelper.html() - Kullanıcı içeriği için güvenli';
	@override String get style_presets => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets', {}) ?? 'Stil Ön Ayarları';
	@override String get style_presets_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets_desc', {}) ?? 'HtmlStyleConfig fabrika yapıcıları';
	@override String get extract_text => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text', {}) ?? 'Metin Çıkar';
	@override String get extract_text_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text_desc', {}) ?? 'htmlWidget.extractText()';
	@override String get extract_links => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links', {}) ?? 'Bağlantıları Çıkar';
	@override String get extract_links_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links_desc', {}) ?? 'htmlWidget.extractLinks()';
	@override String get no_links_found => TranslationOverrides.string(_root.$meta, 'web_viewer.no_links_found', {}) ?? 'Bağlantı bulunamadı';
	@override String get to_widget => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget', {}) ?? 'Widget\'a Dönüştür';
	@override String get to_widget_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget_desc', {}) ?? 'htmlWidget.toWidget()';
	@override String get web_url_viewer => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer', {}) ?? 'Web URL Görüntüleyici';
	@override String get web_url_viewer_desc => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer_desc', {}) ?? 'WebViewerHelper.url() - Navigasyonlu tam WebView';
	@override String get enter_url => TranslationOverrides.string(_root.$meta, 'web_viewer.enter_url', {}) ?? 'URL girin...';
	@override String get go => TranslationOverrides.string(_root.$meta, 'web_viewer.go', {}) ?? 'Git';
	@override String get show_navigation => TranslationOverrides.string(_root.$meta, 'web_viewer.show_navigation', {}) ?? 'Navigasyonu Göster: ';
	@override String get preview => TranslationOverrides.string(_root.$meta, 'web_viewer.preview', {}) ?? 'Önizleme';
	@override String get link_tapped => TranslationOverrides.string(_root.$meta, 'web_viewer.link_tapped', {}) ?? 'Bağlantıya tıklandı: ';
}

// Path: permissions_helper
class _TranslationsPermissionsHelperTr implements TranslationsPermissionsHelperEn {
	_TranslationsPermissionsHelperTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'permissions_helper.title', {}) ?? 'İzinler';
	@override String get runtime_permissions => TranslationOverrides.string(_root.$meta, 'permissions_helper.runtime_permissions', {}) ?? 'Çalışma Zamanı İzinleri';
	@override String get request => TranslationOverrides.string(_root.$meta, 'permissions_helper.request', {}) ?? 'İste';
	@override String get granted => TranslationOverrides.string(_root.$meta, 'permissions_helper.granted', {}) ?? 'verildi';
	@override String get denied => TranslationOverrides.string(_root.$meta, 'permissions_helper.denied', {}) ?? 'reddedildi';
	@override String get unknown => TranslationOverrides.string(_root.$meta, 'permissions_helper.unknown', {}) ?? 'bilinmiyor';
}

// Path: package_info
class _TranslationsPackageInfoTr implements TranslationsPackageInfoEn {
	_TranslationsPackageInfoTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'package_info.title', {}) ?? 'Paket Bilgisi';
}

// Path: skeleton
class _TranslationsSkeletonTr implements TranslationsSkeletonEn {
	_TranslationsSkeletonTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get title => TranslationOverrides.string(_root.$meta, 'skeleton.title', {}) ?? 'İskelet Yardımcısı';
	@override String get animation => TranslationOverrides.string(_root.$meta, 'skeleton.animation', {}) ?? 'Animasyon:';
	@override String get theme => TranslationOverrides.string(_root.$meta, 'skeleton.theme', {}) ?? 'Tema:';
	@override String get light => TranslationOverrides.string(_root.$meta, 'skeleton.light', {}) ?? 'Açık';
	@override String get dark => TranslationOverrides.string(_root.$meta, 'skeleton.dark', {}) ?? 'Koyu';
	@override String get basic_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.basic_shapes', {}) ?? 'Temel Şekiller';
	@override String get text_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.text_shapes', {}) ?? 'Metin Şekilleri';
	@override String get avatar_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.avatar_shapes', {}) ?? 'Avatar Şekilleri';
	@override String get custom_shapes => TranslationOverrides.string(_root.$meta, 'skeleton.custom_shapes', {}) ?? 'Özel Şekiller';
	@override String get rectangle => TranslationOverrides.string(_root.$meta, 'skeleton.rectangle', {}) ?? 'Dikdörtgen';
	@override String get circle => TranslationOverrides.string(_root.$meta, 'skeleton.circle', {}) ?? 'Daire';
	@override String get rounded => TranslationOverrides.string(_root.$meta, 'skeleton.rounded', {}) ?? 'Yuvarlatılmış';
	@override String get text_line => TranslationOverrides.string(_root.$meta, 'skeleton.text_line', {}) ?? 'Metin Satırı';
	@override String get paragraph => TranslationOverrides.string(_root.$meta, 'skeleton.paragraph', {}) ?? 'Paragraf';
	@override String get small => TranslationOverrides.string(_root.$meta, 'skeleton.small', {}) ?? 'Küçük';
	@override String get medium => TranslationOverrides.string(_root.$meta, 'skeleton.medium', {}) ?? 'Orta';
	@override String get large => TranslationOverrides.string(_root.$meta, 'skeleton.large', {}) ?? 'Büyük';
	@override String get diamond => TranslationOverrides.string(_root.$meta, 'skeleton.diamond', {}) ?? 'Elmas';
	@override String get hexagon => TranslationOverrides.string(_root.$meta, 'skeleton.hexagon', {}) ?? 'Altıgen';
	@override String get star => TranslationOverrides.string(_root.$meta, 'skeleton.star', {}) ?? 'Yıldız';
	@override String get list_items => TranslationOverrides.string(_root.$meta, 'skeleton.list_items', {}) ?? 'Liste Öğeleri';
	@override String get cards => TranslationOverrides.string(_root.$meta, 'skeleton.cards', {}) ?? 'Kartlar';
	@override String get profile => TranslationOverrides.string(_root.$meta, 'skeleton.profile', {}) ?? 'Profil';
	@override String get social_post => TranslationOverrides.string(_root.$meta, 'skeleton.social_post', {}) ?? 'Sosyal Gönderi';
	@override String get stories => TranslationOverrides.string(_root.$meta, 'skeleton.stories', {}) ?? 'Hikayeler';
	@override String get product_cards => TranslationOverrides.string(_root.$meta, 'skeleton.product_cards', {}) ?? 'Ürün Kartları';
	@override String get article => TranslationOverrides.string(_root.$meta, 'skeleton.article', {}) ?? 'Makale';
	@override String get color_themes => TranslationOverrides.string(_root.$meta, 'skeleton.color_themes', {}) ?? 'Renk Temaları';
	@override String get dark_theme => TranslationOverrides.string(_root.$meta, 'skeleton.dark_theme', {}) ?? 'Koyu Tema';
}

// Path: settings_widgets
class _TranslationsSettingsWidgetsTr implements TranslationsSettingsWidgetsEn {
	_TranslationsSettingsWidgetsTr._(this._root);

	final TranslationsTr _root; // ignore: unused_field

	// Translations
	@override String get reset_dialog_title => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_title', {}) ?? 'Varsayılanlara Sıfırla';
	@override String get reset_dialog_content => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_content', {}) ?? 'Bu işlem tüm tema ayarlarını varsayılan değerlerine sıfırlayacaktır. Bu işlem geri alınamaz.';
	@override String get reset => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset', {}) ?? 'Sıfırla';
	@override String get show_icons => TranslationOverrides.string(_root.$meta, 'settings_widgets.show_icons', {}) ?? 'İkonları Göster';
	@override String get toggle_icon_visibility => TranslationOverrides.string(_root.$meta, 'settings_widgets.toggle_icon_visibility', {}) ?? 'İkon görünürlüğünü global olarak değiştir';
}

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.ok' => TranslationOverrides.string(_root.$meta, 'common.ok', {}) ?? 'Tamam',
			'common.cancel' => TranslationOverrides.string(_root.$meta, 'common.cancel', {}) ?? 'İptal',
			'common.yes' => TranslationOverrides.string(_root.$meta, 'common.yes', {}) ?? 'Evet',
			'common.no' => TranslationOverrides.string(_root.$meta, 'common.no', {}) ?? 'Hayır',
			'common.save' => TranslationOverrides.string(_root.$meta, 'common.save', {}) ?? 'Kaydet',
			'common.delete' => TranslationOverrides.string(_root.$meta, 'common.delete', {}) ?? 'Sil',
			'common.edit' => TranslationOverrides.string(_root.$meta, 'common.edit', {}) ?? 'Düzenle',
			'common.close' => TranslationOverrides.string(_root.$meta, 'common.close', {}) ?? 'Kapat',
			'common.back' => TranslationOverrides.string(_root.$meta, 'common.back', {}) ?? 'Geri',
			'common.next' => TranslationOverrides.string(_root.$meta, 'common.next', {}) ?? 'İleri',
			'common.previous' => TranslationOverrides.string(_root.$meta, 'common.previous', {}) ?? 'Önceki',
			'common.done' => TranslationOverrides.string(_root.$meta, 'common.done', {}) ?? 'Tamamlandı',
			'common.loading' => TranslationOverrides.string(_root.$meta, 'common.loading', {}) ?? 'Yükleniyor...',
			'common.error' => TranslationOverrides.string(_root.$meta, 'common.error', {}) ?? 'Hata',
			'common.success' => TranslationOverrides.string(_root.$meta, 'common.success', {}) ?? 'Başarılı',
			'common.dismiss' => TranslationOverrides.string(_root.$meta, 'common.dismiss', {}) ?? 'Kapat',
			'common.grant' => TranslationOverrides.string(_root.$meta, 'common.grant', {}) ?? 'İzin Ver',
			'common.undo' => TranslationOverrides.string(_root.$meta, 'common.undo', {}) ?? 'Geri Al',
			'common.retry' => TranslationOverrides.string(_root.$meta, 'common.retry', {}) ?? 'Tekrar Dene',
			'common.refresh' => TranslationOverrides.string(_root.$meta, 'common.refresh', {}) ?? 'Yenile',
			'common.initialize' => TranslationOverrides.string(_root.$meta, 'common.initialize', {}) ?? 'Başlat',
			'common.set' => TranslationOverrides.string(_root.$meta, 'common.set', {}) ?? 'Ayarla',
			'common.subscribe' => TranslationOverrides.string(_root.$meta, 'common.subscribe', {}) ?? 'Abone Ol',
			'common.user' => TranslationOverrides.string(_root.$meta, 'common.user', {}) ?? 'Kullanıcı',
			'auth.title' => TranslationOverrides.string(_root.$meta, 'auth.title', {}) ?? 'Kimlik Doğrulama',
			'auth.sign_in' => TranslationOverrides.string(_root.$meta, 'auth.sign_in', {}) ?? 'Giriş Yap',
			'auth.sign_up' => TranslationOverrides.string(_root.$meta, 'auth.sign_up', {}) ?? 'Kayıt Ol',
			'auth.email' => TranslationOverrides.string(_root.$meta, 'auth.email', {}) ?? 'E-posta',
			'auth.password' => TranslationOverrides.string(_root.$meta, 'auth.password', {}) ?? 'Şifre',
			'auth.forgot_password' => TranslationOverrides.string(_root.$meta, 'auth.forgot_password', {}) ?? 'Şifremi Unuttum?',
			'auth.remember_me' => TranslationOverrides.string(_root.$meta, 'auth.remember_me', {}) ?? 'Beni Hatırla',
			'auth.sign_in_failed' => TranslationOverrides.string(_root.$meta, 'auth.sign_in_failed', {}) ?? 'Giriş başarısız',
			'auth.sign_up_failed' => TranslationOverrides.string(_root.$meta, 'auth.sign_up_failed', {}) ?? 'Kayıt başarısız',
			'account.title' => TranslationOverrides.string(_root.$meta, 'account.title', {}) ?? 'Hesap',
			'account.profile' => TranslationOverrides.string(_root.$meta, 'account.profile', {}) ?? 'Profil',
			'account.settings' => TranslationOverrides.string(_root.$meta, 'account.settings', {}) ?? 'Ayarlar',
			'account.logout' => TranslationOverrides.string(_root.$meta, 'account.logout', {}) ?? 'Çıkış Yap',
			'account.sign_out' => TranslationOverrides.string(_root.$meta, 'account.sign_out', {}) ?? 'Çıkış Yap',
			'onboarding.skip' => TranslationOverrides.string(_root.$meta, 'onboarding.skip', {}) ?? 'Atla',
			'onboarding.get_started' => TranslationOverrides.string(_root.$meta, 'onboarding.get_started', {}) ?? 'Başlayalım',
			'onboarding.previous' => TranslationOverrides.string(_root.$meta, 'onboarding.previous', {}) ?? 'Önceki',
			'onboarding.next' => TranslationOverrides.string(_root.$meta, 'onboarding.next', {}) ?? 'İleri',
			'onboarding.no_pages_configured' => TranslationOverrides.string(_root.$meta, 'onboarding.no_pages_configured', {}) ?? 'Yapılandırılmış karşılama sayfası yok',
			'permissions.title' => TranslationOverrides.string(_root.$meta, 'permissions.title', {}) ?? 'İzinler Gerekli',
			'permissions.description' => TranslationOverrides.string(_root.$meta, 'permissions.description', {}) ?? 'Bu uygulama düzgün çalışmak için belirli izinlere ihtiyaç duyar.',
			'permissions.grant' => TranslationOverrides.string(_root.$meta, 'permissions.grant', {}) ?? 'İzin Ver',
			'permissions.grant_all' => TranslationOverrides.string(_root.$meta, 'permissions.grant_all', {}) ?? 'Tüm İzinleri Ver',
			'permissions.denied' => TranslationOverrides.string(_root.$meta, 'permissions.denied', {}) ?? 'İzin Reddedildi',
			'permissions.request_permissions' => TranslationOverrides.string(_root.$meta, 'permissions.request_permissions', {}) ?? 'İzin İste',
			'search.hint' => TranslationOverrides.string(_root.$meta, 'search.hint', {}) ?? 'Ara...',
			'search.no_results' => TranslationOverrides.string(_root.$meta, 'search.no_results', {}) ?? 'Sonuç bulunamadı',
			'error.generic' => TranslationOverrides.string(_root.$meta, 'error.generic', {}) ?? 'Bir şeyler yanlış gitti. Lütfen tekrar deneyin.',
			'error.network' => TranslationOverrides.string(_root.$meta, 'error.network', {}) ?? 'Ağ hatası. Lütfen bağlantınızı kontrol edin.',
			'error.unauthorized' => TranslationOverrides.string(_root.$meta, 'error.unauthorized', {}) ?? 'Bu işlemi gerçekleştirmek için yetkiniz yok.',
			'error.error_code' => TranslationOverrides.string(_root.$meta, 'error.error_code', {}) ?? 'Hata Kodu',
			'splash.loading' => TranslationOverrides.string(_root.$meta, 'splash.loading', {}) ?? 'Yükleniyor...',
			'splash.webview' => TranslationOverrides.string(_root.$meta, 'splash.webview', {}) ?? 'Web Görünümü',
			'splash.error' => TranslationOverrides.string(_root.$meta, 'splash.error', {}) ?? 'Hata oluştu',
			'splash.maintenance' => TranslationOverrides.string(_root.$meta, 'splash.maintenance', {}) ?? 'Bakımda',
			'splash.empty' => TranslationOverrides.string(_root.$meta, 'splash.empty', {}) ?? 'Veri mevcut değil',
			'splash.unauthorized' => TranslationOverrides.string(_root.$meta, 'splash.unauthorized', {}) ?? 'Yetkisiz',
			'splash.timeout' => TranslationOverrides.string(_root.$meta, 'splash.timeout', {}) ?? 'İstek zaman aşımına uğradı',
			'empty_view.title' => TranslationOverrides.string(_root.$meta, 'empty_view.title', {}) ?? 'İçerik mevcut değil',
			'empty_view.description' => TranslationOverrides.string(_root.$meta, 'empty_view.description', {}) ?? 'Burada gösterilecek bir şey yok.',
			'loading.loading' => TranslationOverrides.string(_root.$meta, 'loading.loading', {}) ?? 'Yükleniyor...',
			'image_detail.title' => TranslationOverrides.string(_root.$meta, 'image_detail.title', {}) ?? 'Resim',
			'home.title' => TranslationOverrides.string(_root.$meta, 'home.title', {}) ?? 'MasterFabric Core',
			'home.description' => TranslationOverrides.string(_root.$meta, 'home.description', {}) ?? 'Önceden oluşturulmuş bileşenler, durum yönetimi desenleri ve yardımcı araçlarla ölçeklenebilir, bakımı kolay mobil uygulamalar oluşturmak için kapsamlı bir Flutter çerçevesi.',
			'home.home_view_hidden' => TranslationOverrides.string(_root.$meta, 'home.home_view_hidden', {}) ?? 'Ana sayfa görünümü gizli',
			'home.show_home_view' => TranslationOverrides.string(_root.$meta, 'home.show_home_view', {}) ?? 'Ana Sayfa Görünümünü Göster',
			'home.quick_navigation' => TranslationOverrides.string(_root.$meta, 'home.quick_navigation', {}) ?? 'Hızlı Navigasyon',
			'home.architecture' => TranslationOverrides.string(_root.$meta, 'home.architecture', {}) ?? 'Mimari',
			'home.core_features' => TranslationOverrides.string(_root.$meta, 'home.core_features', {}) ?? 'Temel Özellikler',
			'home.helper_modules' => TranslationOverrides.string(_root.$meta, 'home.helper_modules', {}) ?? 'Yardımcı Modüller',
			'home.getting_started' => TranslationOverrides.string(_root.$meta, 'home.getting_started', {}) ?? 'Başlangıç',
			'home.products' => TranslationOverrides.string(_root.$meta, 'home.products', {}) ?? 'Ürünler',
			'home.products_subtitle' => TranslationOverrides.string(_root.$meta, 'home.products_subtitle', {}) ?? 'Arama ile örnek ürün listesi',
			'home.profile' => TranslationOverrides.string(_root.$meta, 'home.profile', {}) ?? 'Profil',
			'home.profile_subtitle' => TranslationOverrides.string(_root.$meta, 'home.profile_subtitle', {}) ?? 'Cihaz bilgisi ile kullanıcı profili',
			'home.helper_cases' => TranslationOverrides.string(_root.$meta, 'home.helper_cases', {}) ?? 'Yardımcı Örnekler',
			'home.helper_cases_subtitle' => TranslationOverrides.string(_root.$meta, 'home.helper_cases_subtitle', {}) ?? 'Tüm yardımcı araçları keşfet',
			'home.masterview_cubit' => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit', {}) ?? 'MasterViewCubit',
			'home.masterview_cubit_desc' => TranslationOverrides.string(_root.$meta, 'home.masterview_cubit_desc', {}) ?? 'Entegre Cubit durum yönetimi, yaşam döngüsü kancaları ve ortak UI desenleri ile temel görünüm sınıfı.',
			'home.base_viewmodel_cubit' => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit', {}) ?? 'BaseViewModelCubit',
			'home.base_viewmodel_cubit_desc' => TranslationOverrides.string(_root.$meta, 'home.base_viewmodel_cubit_desc', {}) ?? 'Temiz durum geçişleri ve iş mantığı ayrımı için stateChanger deseni ile genişletilmiş Cubit.',
			'home.injectable_di' => TranslationOverrides.string(_root.$meta, 'home.injectable_di', {}) ?? 'Injectable DI',
			'home.injectable_di_desc' => TranslationOverrides.string(_root.$meta, 'home.injectable_di_desc', {}) ?? 'Temiz servis çözümlemesi için GetIt ve injectable açıklamaları ile otomatik bağımlılık enjeksiyonu.',
			'home.gorouter_navigation' => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation', {}) ?? 'GoRouter Navigasyon',
			'home.gorouter_navigation_desc' => TranslationOverrides.string(_root.$meta, 'home.gorouter_navigation_desc', {}) ?? 'Tür güvenli navigasyon, derin bağlantı ve rota korumaları desteği ile bildirimsel yönlendirme.',
			'home.state_management' => TranslationOverrides.string(_root.$meta, 'home.state_management', {}) ?? 'Durum Yönetimi',
			'home.state_management_desc' => TranslationOverrides.string(_root.$meta, 'home.state_management_desc', {}) ?? 'Cubit, HydratedCubit, BLoC desenleri',
			'home.prebuilt_views' => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views', {}) ?? 'Önceden Oluşturulmuş Görünümler',
			'home.prebuilt_views_desc' => TranslationOverrides.string(_root.$meta, 'home.prebuilt_views_desc', {}) ?? 'Splash, Auth, Onboarding, Error, Empty',
			'home.storage_solutions' => TranslationOverrides.string(_root.$meta, 'home.storage_solutions', {}) ?? 'Depolama Çözümleri',
			'home.storage_solutions_desc' => TranslationOverrides.string(_root.$meta, 'home.storage_solutions_desc', {}) ?? 'SharedPreferences, HiveCE, Güvenli Depolama',
			'home.theme_system' => TranslationOverrides.string(_root.$meta, 'home.theme_system', {}) ?? 'Tema Sistemi',
			'home.theme_system_desc' => TranslationOverrides.string(_root.$meta, 'home.theme_system_desc', {}) ?? 'Açık/Koyu temalar, özel stil',
			'home.localization' => TranslationOverrides.string(_root.$meta, 'home.localization', {}) ?? 'Yerelleştirme',
			'home.localization_desc' => TranslationOverrides.string(_root.$meta, 'home.localization_desc', {}) ?? 'slang ile i18n desteği',
			'home.push_notifications' => TranslationOverrides.string(_root.$meta, 'home.push_notifications', {}) ?? 'Anlık Bildirimler',
			'home.push_notifications_desc' => TranslationOverrides.string(_root.$meta, 'home.push_notifications_desc', {}) ?? 'OneSignal ve Firebase FCM entegrasyonu',
			'home.webviewer' => TranslationOverrides.string(_root.$meta, 'home.webviewer', {}) ?? 'Web Görüntüleyici',
			'home.webviewer_desc' => TranslationOverrides.string(_root.$meta, 'home.webviewer_desc', {}) ?? 'HTML oluşturma ve WebView desteği',
			'home.svg_helper' => TranslationOverrides.string(_root.$meta, 'home.svg_helper', {}) ?? 'SVG Yardımcısı',
			'home.svg_helper_desc' => TranslationOverrides.string(_root.$meta, 'home.svg_helper_desc', {}) ?? 'Varlık, ağ, dize SVG kaynakları',
			'home.force_update' => TranslationOverrides.string(_root.$meta, 'home.force_update', {}) ?? 'Zorunlu Güncelleme',
			'home.force_update_desc' => TranslationOverrides.string(_root.$meta, 'home.force_update_desc', {}) ?? 'Sürüm kontrolü ve mağaza yönlendirmesi',
			'home.skeleton_loading' => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading', {}) ?? 'İskelet Yükleme',
			'home.skeleton_loading_desc' => TranslationOverrides.string(_root.$meta, 'home.skeleton_loading_desc', {}) ?? 'Yükleme durumları için 10 animasyon stili',
			'home.utilities' => TranslationOverrides.string(_root.$meta, 'home.utilities', {}) ?? 'Yardımcı Programlar',
			'home.utilities_desc' => TranslationOverrides.string(_root.$meta, 'home.utilities_desc', {}) ?? 'DateTime, URL, Paylaş, İndir, İzinler',
			'home.add_dependency' => TranslationOverrides.string(_root.$meta, 'home.add_dependency', {}) ?? 'Bağımlılık ekle',
			'home.initialize_main' => TranslationOverrides.string(_root.$meta, 'home.initialize_main', {}) ?? 'main.dart içinde başlat',
			'home.create_views' => TranslationOverrides.string(_root.$meta, 'home.create_views', {}) ?? 'MasterViewCubit\'i genişleten görünümler oluştur',
			'home.configure_routes' => TranslationOverrides.string(_root.$meta, 'home.configure_routes', {}) ?? 'GoRouter ile rotaları yapılandır',
			'home.built_with' => TranslationOverrides.string(_root.$meta, 'home.built_with', {}) ?? 'MasterFabric Core ile oluşturuldu',
			'home.flutter_framework' => TranslationOverrides.string(_root.$meta, 'home.flutter_framework', {}) ?? 'Kurumsal Uygulamalar için Flutter Çerçevesi',
			'products.title' => TranslationOverrides.string(_root.$meta, 'products.title', {}) ?? 'Ürünler',
			'products.products_view_hidden' => TranslationOverrides.string(_root.$meta, 'products.products_view_hidden', {}) ?? 'Ürünler görünümü gizli',
			'products.show_products_view' => TranslationOverrides.string(_root.$meta, 'products.show_products_view', {}) ?? 'Ürünler Görünümünü Göster',
			'products.no_products' => TranslationOverrides.string(_root.$meta, 'products.no_products', {}) ?? 'Ürün yok',
			'products.no_results' => TranslationOverrides.string(_root.$meta, 'products.no_results', {}) ?? 'Sonuç yok',
			'profile.title' => TranslationOverrides.string(_root.$meta, 'profile.title', {}) ?? 'Profil',
			'profile.profile_view_hidden' => TranslationOverrides.string(_root.$meta, 'profile.profile_view_hidden', {}) ?? 'Profil görünümü gizli',
			'profile.show_profile_view' => TranslationOverrides.string(_root.$meta, 'profile.show_profile_view', {}) ?? 'Profil Görünümünü Göster',
			'profile.device' => TranslationOverrides.string(_root.$meta, 'profile.device', {}) ?? 'Cihaz',
			'profile.actions' => TranslationOverrides.string(_root.$meta, 'profile.actions', {}) ?? 'İşlemler',
			'profile.platform' => TranslationOverrides.string(_root.$meta, 'profile.platform', {}) ?? 'platform',
			'profile.device_id' => TranslationOverrides.string(_root.$meta, 'profile.device_id', {}) ?? 'cihaz_id',
			'profile.manufacturer' => TranslationOverrides.string(_root.$meta, 'profile.manufacturer', {}) ?? 'üretici',
			'settings.title' => TranslationOverrides.string(_root.$meta, 'settings.title', {}) ?? 'Ayarlar',
			'settings.theme_mode' => TranslationOverrides.string(_root.$meta, 'settings.theme_mode', {}) ?? 'Tema Modu',
			'settings.font_size' => TranslationOverrides.string(_root.$meta, 'settings.font_size', {}) ?? 'Yazı Boyutu',
			'settings.colors' => TranslationOverrides.string(_root.$meta, 'settings.colors', {}) ?? 'Renkler',
			'settings.view_visibility' => TranslationOverrides.string(_root.$meta, 'settings.view_visibility', {}) ?? 'Görünüm Görünürlüğü',
			'settings.icons' => TranslationOverrides.string(_root.$meta, 'settings.icons', {}) ?? 'İkonlar',
			'settings.permissions' => TranslationOverrides.string(_root.$meta, 'settings.permissions', {}) ?? 'İzinler',
			'settings.manage_permissions' => TranslationOverrides.string(_root.$meta, 'settings.manage_permissions', {}) ?? 'Uygulama izinlerini ve çalışma zamanı erişimini yönetin',
			'settings.request_permissions_again' => TranslationOverrides.string(_root.$meta, 'settings.request_permissions_again', {}) ?? 'İzinleri tekrar iste',
			'settings.open_app_settings' => TranslationOverrides.string(_root.$meta, 'settings.open_app_settings', {}) ?? 'Uygulama ayarlarını aç',
			'settings.language' => TranslationOverrides.string(_root.$meta, 'settings.language', {}) ?? 'Dil',
			'settings.reset_to_defaults' => TranslationOverrides.string(_root.$meta, 'settings.reset_to_defaults', {}) ?? 'Varsayılanlara Sıfırla',
			'settings.restore_theme_settings' => TranslationOverrides.string(_root.$meta, 'settings.restore_theme_settings', {}) ?? 'Tüm tema ayarlarını geri yükle',
			'settings.light' => TranslationOverrides.string(_root.$meta, 'settings.light', {}) ?? 'Açık',
			'settings.dark' => TranslationOverrides.string(_root.$meta, 'settings.dark', {}) ?? 'Koyu',
			'settings.english' => TranslationOverrides.string(_root.$meta, 'settings.english', {}) ?? 'İngilizce',
			'settings.turkish' => TranslationOverrides.string(_root.$meta, 'settings.turkish', {}) ?? 'Türkçe',
			'settings.spanish' => TranslationOverrides.string(_root.$meta, 'settings.spanish', {}) ?? 'İspanyolca',
			'helpers.title' => TranslationOverrides.string(_root.$meta, 'helpers.title', {}) ?? 'Yardımcılar',
			'helpers.core_utilities' => TranslationOverrides.string(_root.$meta, 'helpers.core_utilities', {}) ?? 'Temel Yardımcı Programlar',
			'helpers.device_info' => TranslationOverrides.string(_root.$meta, 'helpers.device_info', {}) ?? 'Cihaz Bilgisi',
			'helpers.local_storage' => TranslationOverrides.string(_root.$meta, 'helpers.local_storage', {}) ?? 'Yerel Depolama',
			'helpers.hivece' => TranslationOverrides.string(_root.$meta, 'helpers.hivece', {}) ?? 'HiveCE',
			'helpers.date_time' => TranslationOverrides.string(_root.$meta, 'helpers.date_time', {}) ?? 'Tarih ve Saat',
			'helpers.url_launcher' => TranslationOverrides.string(_root.$meta, 'helpers.url_launcher', {}) ?? 'URL Başlatıcı',
			'helpers.permissions' => TranslationOverrides.string(_root.$meta, 'helpers.permissions', {}) ?? 'İzinler',
			'helpers.share' => TranslationOverrides.string(_root.$meta, 'helpers.share', {}) ?? 'Paylaş',
			'helpers.file_download' => TranslationOverrides.string(_root.$meta, 'helpers.file_download', {}) ?? 'Dosya İndirme',
			'helpers.app_config' => TranslationOverrides.string(_root.$meta, 'helpers.app_config', {}) ?? 'Uygulama Yapılandırması',
			'helpers.package_info' => TranslationOverrides.string(_root.$meta, 'helpers.package_info', {}) ?? 'Paket Bilgisi',
			'helpers.svg_helper' => TranslationOverrides.string(_root.$meta, 'helpers.svg_helper', {}) ?? 'SVG Yardımcısı',
			'helpers.web_viewer' => TranslationOverrides.string(_root.$meta, 'helpers.web_viewer', {}) ?? 'Web Görüntüleyici',
			'helpers.push_notifications' => TranslationOverrides.string(_root.$meta, 'helpers.push_notifications', {}) ?? 'Anlık Bildirimler',
			'helpers.force_update' => TranslationOverrides.string(_root.$meta, 'helpers.force_update', {}) ?? 'Zorunlu Güncelleme',
			'helpers.skeleton_loading' => TranslationOverrides.string(_root.$meta, 'helpers.skeleton_loading', {}) ?? 'İskelet Yükleme',
			'app_config.title' => TranslationOverrides.string(_root.$meta, 'app_config.title', {}) ?? 'Uygulama Yapılandırması',
			'app_config.app_settings' => TranslationOverrides.string(_root.$meta, 'app_config.app_settings', {}) ?? 'appSettings',
			'app_config.ui_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.ui_configuration', {}) ?? 'uiConfiguration',
			'app_config.splash_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.splash_configuration', {}) ?? 'splashConfiguration',
			'app_config.api_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.api_configuration', {}) ?? 'apiConfiguration',
			'app_config.storage_configuration' => TranslationOverrides.string(_root.$meta, 'app_config.storage_configuration', {}) ?? 'storageConfiguration',
			'app_config.null_value' => TranslationOverrides.string(_root.$meta, 'app_config.null_value', {}) ?? 'null',
			'app_config.items' => TranslationOverrides.string(_root.$meta, 'app_config.items', {}) ?? 'öğeler',
			'app_config.keys' => TranslationOverrides.string(_root.$meta, 'app_config.keys', {}) ?? 'anahtarlar',
			'app_config.config_file_path' => TranslationOverrides.string(_root.$meta, 'app_config.config_file_path', {}) ?? 'assets/app_config.json',
			'device_info.title' => TranslationOverrides.string(_root.$meta, 'device_info.title', {}) ?? 'Cihaz Bilgisi',
			'device_info.platform' => TranslationOverrides.string(_root.$meta, 'device_info.platform', {}) ?? 'platform',
			'device_info.device_name' => TranslationOverrides.string(_root.$meta, 'device_info.device_name', {}) ?? 'cihaz_adı',
			'device_info.device_id' => TranslationOverrides.string(_root.$meta, 'device_info.device_id', {}) ?? 'cihaz_id',
			'device_info.manufacturer' => TranslationOverrides.string(_root.$meta, 'device_info.manufacturer', {}) ?? 'üretici',
			'device_info.model' => TranslationOverrides.string(_root.$meta, 'device_info.model', {}) ?? 'model',
			'device_info.system_version' => TranslationOverrides.string(_root.$meta, 'device_info.system_version', {}) ?? 'sistem_sürümü',
			'force_update.title' => TranslationOverrides.string(_root.$meta, 'force_update.title', {}) ?? 'Zorunlu Güncelleme',
			'force_update.status' => TranslationOverrides.string(_root.$meta, 'force_update.status', {}) ?? 'Durum',
			'force_update.preview_ui_type' => TranslationOverrides.string(_root.$meta, 'force_update.preview_ui_type', {}) ?? 'Önizleme UI Türü',
			'force_update.simulation_mode' => TranslationOverrides.string(_root.$meta, 'force_update.simulation_mode', {}) ?? 'Simülasyon Modu',
			'force_update.preview_update_ui' => TranslationOverrides.string(_root.$meta, 'force_update.preview_update_ui', {}) ?? 'Güncelleme UI Önizlemesi',
			'force_update.version_comparison' => TranslationOverrides.string(_root.$meta, 'force_update.version_comparison', {}) ?? 'Sürüm Karşılaştırması',
			'force_update.initialized' => TranslationOverrides.string(_root.$meta, 'force_update.initialized', {}) ?? 'Başlatıldı',
			'force_update.not_initialized' => TranslationOverrides.string(_root.$meta, 'force_update.not_initialized', {}) ?? 'Başlatılmadı',
			'force_update.app_version' => TranslationOverrides.string(_root.$meta, 'force_update.app_version', {}) ?? 'Uygulama Sürümü',
			'force_update.check_update' => TranslationOverrides.string(_root.$meta, 'force_update.check_update', {}) ?? 'Güncellemeyi Kontrol Et',
			'force_update.open_store' => TranslationOverrides.string(_root.$meta, 'force_update.open_store', {}) ?? 'Mağazayı Aç',
			'force_update.alert_dialog' => TranslationOverrides.string(_root.$meta, 'force_update.alert_dialog', {}) ?? 'Uyarı Diyaloğu',
			'force_update.bottom_sheet' => TranslationOverrides.string(_root.$meta, 'force_update.bottom_sheet', {}) ?? 'Alt Sayfa',
			'force_update.full_screen' => TranslationOverrides.string(_root.$meta, 'force_update.full_screen', {}) ?? 'Tam Ekran',
			'force_update.compact_dialog_overlay' => TranslationOverrides.string(_root.$meta, 'force_update.compact_dialog_overlay', {}) ?? 'Kompakt diyalog katmanı',
			'force_update.modal_from_bottom' => TranslationOverrides.string(_root.$meta, 'force_update.modal_from_bottom', {}) ?? 'Alttan modal',
			'force_update.blocking_full_page' => TranslationOverrides.string(_root.$meta, 'force_update.blocking_full_page', {}) ?? 'Engelleyici tam sayfa',
			'force_update.use_simulation' => TranslationOverrides.string(_root.$meta, 'force_update.use_simulation', {}) ?? 'Simülasyon Kullan',
			'force_update.current_version' => TranslationOverrides.string(_root.$meta, 'force_update.current_version', {}) ?? 'Mevcut Sürüm',
			'force_update.latest_version' => TranslationOverrides.string(_root.$meta, 'force_update.latest_version', {}) ?? 'En Son Sürüm',
			'force_update.minimum_version' => TranslationOverrides.string(_root.$meta, 'force_update.minimum_version', {}) ?? 'Minimum Sürüm',
			'force_update.simulation_tip' => TranslationOverrides.string(_root.$meta, 'force_update.simulation_tip', {}) ?? 'İpucu: Zorunlu güncelleme için minimum > mevcut ayarla',
			'force_update.optional_update' => TranslationOverrides.string(_root.$meta, 'force_update.optional_update', {}) ?? 'İsteğe Bağlı Güncelleme',
			'force_update.optional_update_desc' => TranslationOverrides.string(_root.$meta, 'force_update.optional_update_desc', {}) ?? 'Kapatılabilir güncelleme istemi göster',
			'force_update.recommended_update' => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update', {}) ?? 'Önerilen Güncelleme',
			'force_update.recommended_update_desc' => TranslationOverrides.string(_root.$meta, 'force_update.recommended_update_desc', {}) ?? 'Önerilen güncelleme istemi göster',
			'force_update.force_update_desc' => TranslationOverrides.string(_root.$meta, 'force_update.force_update_desc', {}) ?? 'Engelleyici güncelleme ekranı göster',
			'force_update.version_comparator_examples' => TranslationOverrides.string(_root.$meta, 'force_update.version_comparator_examples', {}) ?? 'Sürüm Karşılaştırıcı Örnekleri',
			'force_update.older' => TranslationOverrides.string(_root.$meta, 'force_update.older', {}) ?? 'eski',
			'force_update.newer' => TranslationOverrides.string(_root.$meta, 'force_update.newer', {}) ?? 'yeni',
			'force_update.equal' => TranslationOverrides.string(_root.$meta, 'force_update.equal', {}) ?? 'eşit',
			'force_update.older_prerelease' => TranslationOverrides.string(_root.$meta, 'force_update.older_prerelease', {}) ?? 'eski (ön sürüm)',
			'force_update.older_build' => TranslationOverrides.string(_root.$meta, 'force_update.older_build', {}) ?? 'eski (derleme)',
			'push_notification.title' => TranslationOverrides.string(_root.$meta, 'push_notification.title', {}) ?? 'Anlık Bildirimler',
			'push_notification.status' => TranslationOverrides.string(_root.$meta, 'push_notification.status', {}) ?? 'Durum',
			'push_notification.active_providers' => TranslationOverrides.string(_root.$meta, 'push_notification.active_providers', {}) ?? 'Aktif Sağlayıcılar',
			'push_notification.permissions' => TranslationOverrides.string(_root.$meta, 'push_notification.permissions', {}) ?? 'İzinler',
			'push_notification.device_tokens' => TranslationOverrides.string(_root.$meta, 'push_notification.device_tokens', {}) ?? 'Cihaz Token\'ları',
			'push_notification.topic_subscriptions' => TranslationOverrides.string(_root.$meta, 'push_notification.topic_subscriptions', {}) ?? 'Konu Abonelikleri',
			'push_notification.user_targeting' => TranslationOverrides.string(_root.$meta, 'push_notification.user_targeting', {}) ?? 'Kullanıcı Hedefleme',
			'push_notification.actions' => TranslationOverrides.string(_root.$meta, 'push_notification.actions', {}) ?? 'İşlemler',
			'push_notification.initialized' => TranslationOverrides.string(_root.$meta, 'push_notification.initialized', {}) ?? 'Başlatıldı',
			'push_notification.not_initialized' => TranslationOverrides.string(_root.$meta, 'push_notification.not_initialized', {}) ?? 'Başlatılmadı',
			'push_notification.providers_active' => TranslationOverrides.string(_root.$meta, 'push_notification.providers_active', {}) ?? 'sağlayıcı aktif',
			'push_notification.tap_to_initialize' => TranslationOverrides.string(_root.$meta, 'push_notification.tap_to_initialize', {}) ?? 'Başlatmak için dokunun',
			'push_notification.initialize_to_see_providers' => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_providers', {}) ?? 'Aktif sağlayıcıları görmek için başlat',
			'push_notification.no_providers_configured' => TranslationOverrides.string(_root.$meta, 'push_notification.no_providers_configured', {}) ?? 'Yapılandırılmış sağlayıcı yok',
			'push_notification.initialize_to_check_permissions' => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_check_permissions', {}) ?? 'İzinleri kontrol etmek için başlat',
			'push_notification.initialize_to_see_tokens' => TranslationOverrides.string(_root.$meta, 'push_notification.initialize_to_see_tokens', {}) ?? 'Cihaz token\'larını görmek için başlat',
			'push_notification.no_token' => TranslationOverrides.string(_root.$meta, 'push_notification.no_token', {}) ?? 'Token yok',
			'push_notification.token_copied' => TranslationOverrides.string(_root.$meta, 'push_notification.token_copied', {}) ?? 'Token panoya kopyalandı',
			'push_notification.opt_in' => TranslationOverrides.string(_root.$meta, 'push_notification.opt_in', {}) ?? 'Katıl',
			'push_notification.opt_out' => TranslationOverrides.string(_root.$meta, 'push_notification.opt_out', {}) ?? 'Ayrıl',
			'push_notification.clear_all_data' => TranslationOverrides.string(_root.$meta, 'push_notification.clear_all_data', {}) ?? 'Tüm Verileri Temizle',
			'push_notification.enter_topic_name' => TranslationOverrides.string(_root.$meta, 'push_notification.enter_topic_name', {}) ?? 'Konu adı girin',
			'push_notification.subscribe' => TranslationOverrides.string(_root.$meta, 'push_notification.subscribe', {}) ?? 'Abone Ol',
			'push_notification.no_topics_subscribed' => TranslationOverrides.string(_root.$meta, 'push_notification.no_topics_subscribed', {}) ?? 'Abone olunan konu yok',
			'push_notification.enter_user_id' => TranslationOverrides.string(_root.$meta, 'push_notification.enter_user_id', {}) ?? 'Kullanıcı ID\'si girin',
			'push_notification.set' => TranslationOverrides.string(_root.$meta, 'push_notification.set', {}) ?? 'Ayarla',
			'push_notification.remove_user_id' => TranslationOverrides.string(_root.$meta, 'push_notification.remove_user_id', {}) ?? 'Kullanıcı ID\'sini Kaldır (Çıkış)',
			'push_notification.onesignal' => TranslationOverrides.string(_root.$meta, 'push_notification.onesignal', {}) ?? 'OneSignal',
			'push_notification.firebase' => TranslationOverrides.string(_root.$meta, 'push_notification.firebase', {}) ?? 'Firebase',
			'push_notification.custom' => TranslationOverrides.string(_root.$meta, 'push_notification.custom', {}) ?? 'Özel',
			'storage.title' => TranslationOverrides.string(_root.$meta, 'storage.title', {}) ?? 'Yerel Depolama',
			'storage.string' => TranslationOverrides.string(_root.$meta, 'storage.string', {}) ?? 'String',
			'storage.int' => TranslationOverrides.string(_root.$meta, 'storage.int', {}) ?? 'Int',
			'storage.double' => TranslationOverrides.string(_root.$meta, 'storage.double', {}) ?? 'Double',
			'storage.bool' => TranslationOverrides.string(_root.$meta, 'storage.bool', {}) ?? 'Bool',
			'storage.key' => TranslationOverrides.string(_root.$meta, 'storage.key', {}) ?? 'anahtar',
			'storage.value' => TranslationOverrides.string(_root.$meta, 'storage.value', {}) ?? 'değer',
			'storage.true_value' => TranslationOverrides.string(_root.$meta, 'storage.true_value', {}) ?? 'doğru',
			'storage.false_value' => TranslationOverrides.string(_root.$meta, 'storage.false_value', {}) ?? 'yanlış',
			'hivece_storage.title' => TranslationOverrides.string(_root.$meta, 'hivece_storage.title', {}) ?? 'HiveCE Depolama',
			'hivece_storage.string' => TranslationOverrides.string(_root.$meta, 'hivece_storage.string', {}) ?? 'String',
			'hivece_storage.int' => TranslationOverrides.string(_root.$meta, 'hivece_storage.int', {}) ?? 'Int',
			'hivece_storage.double' => TranslationOverrides.string(_root.$meta, 'hivece_storage.double', {}) ?? 'Double',
			'hivece_storage.bool' => TranslationOverrides.string(_root.$meta, 'hivece_storage.bool', {}) ?? 'Bool',
			'hivece_storage.list_string' => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_string', {}) ?? 'List<String>',
			'hivece_storage.get_by_key' => TranslationOverrides.string(_root.$meta, 'hivece_storage.get_by_key', {}) ?? 'Anahtara Göre Al',
			'hivece_storage.all_items' => TranslationOverrides.string(_root.$meta, 'hivece_storage.all_items', {}) ?? 'Tüm Öğeler',
			'hivece_storage.no_items' => TranslationOverrides.string(_root.$meta, 'hivece_storage.no_items', {}) ?? 'Öğe yok',
			'hivece_storage.key' => TranslationOverrides.string(_root.$meta, 'hivece_storage.key', {}) ?? 'anahtar',
			'hivece_storage.value' => TranslationOverrides.string(_root.$meta, 'hivece_storage.value', {}) ?? 'değer',
			'hivece_storage.enter_key' => TranslationOverrides.string(_root.$meta, 'hivece_storage.enter_key', {}) ?? 'anahtar girin',
			'hivece_storage.list_hint' => TranslationOverrides.string(_root.$meta, 'hivece_storage.list_hint', {}) ?? 'a, b, c',
			'hivece_storage.true_value' => TranslationOverrides.string(_root.$meta, 'hivece_storage.true_value', {}) ?? 'doğru',
			'hivece_storage.false_value' => TranslationOverrides.string(_root.$meta, 'hivece_storage.false_value', {}) ?? 'yanlış',
			'hivece_storage.get' => TranslationOverrides.string(_root.$meta, 'hivece_storage.get', {}) ?? 'Al',
			'share.title' => TranslationOverrides.string(_root.$meta, 'share.title', {}) ?? 'Paylaş',
			'share.share_file' => TranslationOverrides.string(_root.$meta, 'share.share_file', {}) ?? 'Dosya Paylaş',
			'share.share_text' => TranslationOverrides.string(_root.$meta, 'share.share_text', {}) ?? 'Metin Paylaş',
			'share.enter_text' => TranslationOverrides.string(_root.$meta, 'share.enter_text', {}) ?? 'Metin girin',
			'download.title' => TranslationOverrides.string(_root.$meta, 'download.title', {}) ?? 'İndirme',
			'download.download_file' => TranslationOverrides.string(_root.$meta, 'download.download_file', {}) ?? 'Dosya İndir',
			'download.url' => TranslationOverrides.string(_root.$meta, 'download.url', {}) ?? 'URL',
			'download.filename' => TranslationOverrides.string(_root.$meta, 'download.filename', {}) ?? 'Dosya Adı',
			'datetime.title' => TranslationOverrides.string(_root.$meta, 'datetime.title', {}) ?? 'Tarih ve Saat',
			'datetime.format_date' => TranslationOverrides.string(_root.$meta, 'datetime.format_date', {}) ?? 'formatDate()',
			'datetime.format_time' => TranslationOverrides.string(_root.$meta, 'datetime.format_time', {}) ?? 'formatTime()',
			'datetime.format_datetime' => TranslationOverrides.string(_root.$meta, 'datetime.format_datetime', {}) ?? 'formatDateTime()',
			'datetime.get_relative_time' => TranslationOverrides.string(_root.$meta, 'datetime.get_relative_time', {}) ?? 'getRelativeTime()',
			'datetime.parse_date' => TranslationOverrides.string(_root.$meta, 'datetime.parse_date', {}) ?? 'parseDate()',
			'url_launcher.title' => TranslationOverrides.string(_root.$meta, 'url_launcher.title', {}) ?? 'URL Başlatıcı',
			'url_launcher.url' => TranslationOverrides.string(_root.$meta, 'url_launcher.url', {}) ?? 'URL',
			'url_launcher.phone' => TranslationOverrides.string(_root.$meta, 'url_launcher.phone', {}) ?? 'Telefon',
			'url_launcher.email' => TranslationOverrides.string(_root.$meta, 'url_launcher.email', {}) ?? 'E-posta',
			'url_launcher.sms' => TranslationOverrides.string(_root.$meta, 'url_launcher.sms', {}) ?? 'SMS',
			'url_launcher.launch' => TranslationOverrides.string(_root.$meta, 'url_launcher.launch', {}) ?? 'Başlat',
			'svg_helper.title' => TranslationOverrides.string(_root.$meta, 'svg_helper.title', {}) ?? 'SVG Yardımcısı',
			'svg_helper.asset_svg' => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg', {}) ?? 'Varlık SVG',
			'svg_helper.asset_svg_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.asset_svg_desc', {}) ?? 'Varlıklar klasöründen SVG yükle',
			'svg_helper.color_tinting' => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting', {}) ?? 'Renk Tonlama',
			'svg_helper.color_tinting_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.color_tinting_desc', {}) ?? 'SVG rengini dinamik olarak değiştir',
			'svg_helper.size_variations' => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations', {}) ?? 'Boyut Varyasyonları',
			'svg_helper.size_variations_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.size_variations_desc', {}) ?? 'Farklı ikon boyutları',
			'svg_helper.svg_from_string' => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string', {}) ?? 'Dizeden SVG',
			'svg_helper.svg_from_string_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.svg_from_string_desc', {}) ?? 'Ham dize verilerinden SVG oluştur',
			'svg_helper.themed_icon' => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon', {}) ?? 'Temalı İkon',
			'svg_helper.themed_icon_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.themed_icon_desc', {}) ?? 'IconTheme\'den otomatik renklendirilmiş',
			'svg_helper.using_svg_config' => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config', {}) ?? 'SvgConfig Kullanımı',
			'svg_helper.using_svg_config_desc' => TranslationOverrides.string(_root.$meta, 'svg_helper.using_svg_config_desc', {}) ?? 'Yeniden kullanılabilir yapılandırma ön ayarları',
			'web_viewer.title' => TranslationOverrides.string(_root.$meta, 'web_viewer.title', {}) ?? 'Web Görüntüleyici Yardımcısı',
			'web_viewer.sanitized_html' => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html', {}) ?? 'Temizlenmiş HTML',
			'web_viewer.sanitized_html_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.sanitized_html_desc', {}) ?? 'WebViewerHelper.html() - Kullanıcı içeriği için güvenli',
			'web_viewer.style_presets' => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets', {}) ?? 'Stil Ön Ayarları',
			'web_viewer.style_presets_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.style_presets_desc', {}) ?? 'HtmlStyleConfig fabrika yapıcıları',
			'web_viewer.extract_text' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text', {}) ?? 'Metin Çıkar',
			'web_viewer.extract_text_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_text_desc', {}) ?? 'htmlWidget.extractText()',
			'web_viewer.extract_links' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links', {}) ?? 'Bağlantıları Çıkar',
			'web_viewer.extract_links_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.extract_links_desc', {}) ?? 'htmlWidget.extractLinks()',
			'web_viewer.no_links_found' => TranslationOverrides.string(_root.$meta, 'web_viewer.no_links_found', {}) ?? 'Bağlantı bulunamadı',
			'web_viewer.to_widget' => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget', {}) ?? 'Widget\'a Dönüştür',
			'web_viewer.to_widget_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.to_widget_desc', {}) ?? 'htmlWidget.toWidget()',
			'web_viewer.web_url_viewer' => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer', {}) ?? 'Web URL Görüntüleyici',
			'web_viewer.web_url_viewer_desc' => TranslationOverrides.string(_root.$meta, 'web_viewer.web_url_viewer_desc', {}) ?? 'WebViewerHelper.url() - Navigasyonlu tam WebView',
			'web_viewer.enter_url' => TranslationOverrides.string(_root.$meta, 'web_viewer.enter_url', {}) ?? 'URL girin...',
			'web_viewer.go' => TranslationOverrides.string(_root.$meta, 'web_viewer.go', {}) ?? 'Git',
			'web_viewer.show_navigation' => TranslationOverrides.string(_root.$meta, 'web_viewer.show_navigation', {}) ?? 'Navigasyonu Göster: ',
			'web_viewer.preview' => TranslationOverrides.string(_root.$meta, 'web_viewer.preview', {}) ?? 'Önizleme',
			'web_viewer.link_tapped' => TranslationOverrides.string(_root.$meta, 'web_viewer.link_tapped', {}) ?? 'Bağlantıya tıklandı: ',
			'permissions_helper.title' => TranslationOverrides.string(_root.$meta, 'permissions_helper.title', {}) ?? 'İzinler',
			'permissions_helper.runtime_permissions' => TranslationOverrides.string(_root.$meta, 'permissions_helper.runtime_permissions', {}) ?? 'Çalışma Zamanı İzinleri',
			'permissions_helper.request' => TranslationOverrides.string(_root.$meta, 'permissions_helper.request', {}) ?? 'İste',
			'permissions_helper.granted' => TranslationOverrides.string(_root.$meta, 'permissions_helper.granted', {}) ?? 'verildi',
			'permissions_helper.denied' => TranslationOverrides.string(_root.$meta, 'permissions_helper.denied', {}) ?? 'reddedildi',
			'permissions_helper.unknown' => TranslationOverrides.string(_root.$meta, 'permissions_helper.unknown', {}) ?? 'bilinmiyor',
			'package_info.title' => TranslationOverrides.string(_root.$meta, 'package_info.title', {}) ?? 'Paket Bilgisi',
			'skeleton.title' => TranslationOverrides.string(_root.$meta, 'skeleton.title', {}) ?? 'İskelet Yardımcısı',
			'skeleton.animation' => TranslationOverrides.string(_root.$meta, 'skeleton.animation', {}) ?? 'Animasyon:',
			'skeleton.theme' => TranslationOverrides.string(_root.$meta, 'skeleton.theme', {}) ?? 'Tema:',
			'skeleton.light' => TranslationOverrides.string(_root.$meta, 'skeleton.light', {}) ?? 'Açık',
			'skeleton.dark' => TranslationOverrides.string(_root.$meta, 'skeleton.dark', {}) ?? 'Koyu',
			'skeleton.basic_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.basic_shapes', {}) ?? 'Temel Şekiller',
			'skeleton.text_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.text_shapes', {}) ?? 'Metin Şekilleri',
			'skeleton.avatar_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.avatar_shapes', {}) ?? 'Avatar Şekilleri',
			'skeleton.custom_shapes' => TranslationOverrides.string(_root.$meta, 'skeleton.custom_shapes', {}) ?? 'Özel Şekiller',
			'skeleton.rectangle' => TranslationOverrides.string(_root.$meta, 'skeleton.rectangle', {}) ?? 'Dikdörtgen',
			'skeleton.circle' => TranslationOverrides.string(_root.$meta, 'skeleton.circle', {}) ?? 'Daire',
			'skeleton.rounded' => TranslationOverrides.string(_root.$meta, 'skeleton.rounded', {}) ?? 'Yuvarlatılmış',
			'skeleton.text_line' => TranslationOverrides.string(_root.$meta, 'skeleton.text_line', {}) ?? 'Metin Satırı',
			'skeleton.paragraph' => TranslationOverrides.string(_root.$meta, 'skeleton.paragraph', {}) ?? 'Paragraf',
			'skeleton.small' => TranslationOverrides.string(_root.$meta, 'skeleton.small', {}) ?? 'Küçük',
			'skeleton.medium' => TranslationOverrides.string(_root.$meta, 'skeleton.medium', {}) ?? 'Orta',
			'skeleton.large' => TranslationOverrides.string(_root.$meta, 'skeleton.large', {}) ?? 'Büyük',
			'skeleton.diamond' => TranslationOverrides.string(_root.$meta, 'skeleton.diamond', {}) ?? 'Elmas',
			'skeleton.hexagon' => TranslationOverrides.string(_root.$meta, 'skeleton.hexagon', {}) ?? 'Altıgen',
			'skeleton.star' => TranslationOverrides.string(_root.$meta, 'skeleton.star', {}) ?? 'Yıldız',
			'skeleton.list_items' => TranslationOverrides.string(_root.$meta, 'skeleton.list_items', {}) ?? 'Liste Öğeleri',
			'skeleton.cards' => TranslationOverrides.string(_root.$meta, 'skeleton.cards', {}) ?? 'Kartlar',
			'skeleton.profile' => TranslationOverrides.string(_root.$meta, 'skeleton.profile', {}) ?? 'Profil',
			'skeleton.social_post' => TranslationOverrides.string(_root.$meta, 'skeleton.social_post', {}) ?? 'Sosyal Gönderi',
			'skeleton.stories' => TranslationOverrides.string(_root.$meta, 'skeleton.stories', {}) ?? 'Hikayeler',
			'skeleton.product_cards' => TranslationOverrides.string(_root.$meta, 'skeleton.product_cards', {}) ?? 'Ürün Kartları',
			'skeleton.article' => TranslationOverrides.string(_root.$meta, 'skeleton.article', {}) ?? 'Makale',
			'skeleton.color_themes' => TranslationOverrides.string(_root.$meta, 'skeleton.color_themes', {}) ?? 'Renk Temaları',
			'skeleton.dark_theme' => TranslationOverrides.string(_root.$meta, 'skeleton.dark_theme', {}) ?? 'Koyu Tema',
			'settings_widgets.reset_dialog_title' => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_title', {}) ?? 'Varsayılanlara Sıfırla',
			'settings_widgets.reset_dialog_content' => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset_dialog_content', {}) ?? 'Bu işlem tüm tema ayarlarını varsayılan değerlerine sıfırlayacaktır. Bu işlem geri alınamaz.',
			'settings_widgets.reset' => TranslationOverrides.string(_root.$meta, 'settings_widgets.reset', {}) ?? 'Sıfırla',
			'settings_widgets.show_icons' => TranslationOverrides.string(_root.$meta, 'settings_widgets.show_icons', {}) ?? 'İkonları Göster',
			'settings_widgets.toggle_icon_visibility' => TranslationOverrides.string(_root.$meta, 'settings_widgets.toggle_icon_visibility', {}) ?? 'İkon görünürlüğünü global olarak değiştir',
			_ => null,
		};
	}
}
