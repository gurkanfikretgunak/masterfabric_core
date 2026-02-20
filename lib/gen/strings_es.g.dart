///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonEs common = _TranslationsCommonEs._(_root);
	@override late final _TranslationsAuthEs auth = _TranslationsAuthEs._(_root);
	@override late final _TranslationsAccountEs account = _TranslationsAccountEs._(_root);
	@override late final _TranslationsOnboardingEs onboarding = _TranslationsOnboardingEs._(_root);
	@override late final _TranslationsPermissionsEs permissions = _TranslationsPermissionsEs._(_root);
	@override late final _TranslationsSearchEs search = _TranslationsSearchEs._(_root);
	@override late final _TranslationsErrorEs error = _TranslationsErrorEs._(_root);
	@override late final _TranslationsSplashEs splash = _TranslationsSplashEs._(_root);
	@override late final _TranslationsEmptyViewEs empty_view = _TranslationsEmptyViewEs._(_root);
	@override late final _TranslationsLoadingEs loading = _TranslationsLoadingEs._(_root);
	@override late final _TranslationsImageDetailEs image_detail = _TranslationsImageDetailEs._(_root);
	@override late final _TranslationsHomeEs home = _TranslationsHomeEs._(_root);
	@override late final _TranslationsProductsEs products = _TranslationsProductsEs._(_root);
	@override late final _TranslationsProfileEs profile = _TranslationsProfileEs._(_root);
	@override late final _TranslationsSettingsEs settings = _TranslationsSettingsEs._(_root);
	@override late final _TranslationsHelpersEs helpers = _TranslationsHelpersEs._(_root);
	@override late final _TranslationsAppConfigEs app_config = _TranslationsAppConfigEs._(_root);
	@override late final _TranslationsDeviceInfoEs device_info = _TranslationsDeviceInfoEs._(_root);
	@override late final _TranslationsForceUpdateEs force_update = _TranslationsForceUpdateEs._(_root);
	@override late final _TranslationsPushNotificationEs push_notification = _TranslationsPushNotificationEs._(_root);
	@override late final _TranslationsStorageEs storage = _TranslationsStorageEs._(_root);
	@override late final _TranslationsHiveceStorageEs hivece_storage = _TranslationsHiveceStorageEs._(_root);
	@override late final _TranslationsShareEs share = _TranslationsShareEs._(_root);
	@override late final _TranslationsDownloadEs download = _TranslationsDownloadEs._(_root);
	@override late final _TranslationsDatetimeEs datetime = _TranslationsDatetimeEs._(_root);
	@override late final _TranslationsUrlLauncherEs url_launcher = _TranslationsUrlLauncherEs._(_root);
	@override late final _TranslationsSvgHelperEs svg_helper = _TranslationsSvgHelperEs._(_root);
	@override late final _TranslationsWebViewerEs web_viewer = _TranslationsWebViewerEs._(_root);
	@override late final _TranslationsPermissionsHelperEs permissions_helper = _TranslationsPermissionsHelperEs._(_root);
	@override late final _TranslationsPackageInfoEs package_info = _TranslationsPackageInfoEs._(_root);
	@override late final _TranslationsSkeletonEs skeleton = _TranslationsSkeletonEs._(_root);
	@override late final _TranslationsSettingsWidgetsEs settings_widgets = _TranslationsSettingsWidgetsEs._(_root);
}

// Path: common
class _TranslationsCommonEs implements TranslationsCommonEn {
	_TranslationsCommonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Cancelar';
	@override String get yes => 'Sí';
	@override String get no => 'No';
	@override String get save => 'Guardar';
	@override String get delete => 'Eliminar';
	@override String get edit => 'Editar';
	@override String get close => 'Cerrar';
	@override String get back => 'Atrás';
	@override String get next => 'Siguiente';
	@override String get previous => 'Anterior';
	@override String get done => 'Hecho';
	@override String get loading => 'Cargando...';
	@override String get error => 'Error';
	@override String get success => 'Éxito';
	@override String get dismiss => 'Descartar';
	@override String get grant => 'Conceder';
	@override String get undo => 'Deshacer';
	@override String get retry => 'Reintentar';
	@override String get refresh => 'Actualizar';
	@override String get initialize => 'Inicializar';
	@override String get set => 'Establecer';
	@override String get subscribe => 'Suscribirse';
	@override String get user => 'Usuario';
}

// Path: auth
class _TranslationsAuthEs implements TranslationsAuthEn {
	_TranslationsAuthEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Autenticación';
	@override String get sign_in => 'Iniciar Sesión';
	@override String get sign_up => 'Registrarse';
	@override String get email => 'Correo Electrónico';
	@override String get password => 'Contraseña';
	@override String get forgot_password => '¿Olvidaste tu Contraseña?';
	@override String get remember_me => 'Recordarme';
	@override String get sign_in_failed => 'Error al iniciar sesión';
	@override String get sign_up_failed => 'Error al registrarse';
}

// Path: account
class _TranslationsAccountEs implements TranslationsAccountEn {
	_TranslationsAccountEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Cuenta';
	@override String get profile => 'Perfil';
	@override String get settings => 'Configuración';
	@override String get logout => 'Cerrar Sesión';
	@override String get sign_out => 'Cerrar Sesión';
}

// Path: onboarding
class _TranslationsOnboardingEs implements TranslationsOnboardingEn {
	_TranslationsOnboardingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get skip => 'Omitir';
	@override String get get_started => 'Comenzar';
	@override String get previous => 'Anterior';
	@override String get next => 'Siguiente';
	@override String get no_pages_configured => 'No hay páginas de bienvenida configuradas';
}

// Path: permissions
class _TranslationsPermissionsEs implements TranslationsPermissionsEn {
	_TranslationsPermissionsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisos Requeridos';
	@override String get description => 'Esta aplicación necesita ciertos permisos para funcionar correctamente.';
	@override String get grant => 'Conceder';
	@override String get grant_all => 'Conceder Todos los Permisos';
	@override String get denied => 'Permiso Denegado';
	@override String get request_permissions => 'Solicitar Permisos';
}

// Path: search
class _TranslationsSearchEs implements TranslationsSearchEn {
	_TranslationsSearchEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get hint => 'Buscar...';
	@override String get no_results => 'No se encontraron resultados';
}

// Path: error
class _TranslationsErrorEs implements TranslationsErrorEn {
	_TranslationsErrorEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get generic => 'Algo salió mal. Por favor, inténtalo de nuevo.';
	@override String get network => 'Error de red. Por favor, verifica tu conexión.';
	@override String get unauthorized => 'No estás autorizado para realizar esta acción.';
	@override String get error_code => 'Código de Error';
}

// Path: splash
class _TranslationsSplashEs implements TranslationsSplashEn {
	_TranslationsSplashEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Cargando...';
	@override String get webview => 'Vista Web';
	@override String get error => 'Ocurrió un error';
	@override String get maintenance => 'En mantenimiento';
	@override String get empty => 'No hay datos disponibles';
	@override String get unauthorized => 'No autorizado';
	@override String get timeout => 'Tiempo de espera agotado';
}

// Path: empty_view
class _TranslationsEmptyViewEs implements TranslationsEmptyViewEn {
	_TranslationsEmptyViewEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'No hay contenido disponible';
	@override String get description => 'No hay nada que mostrar aquí.';
}

// Path: loading
class _TranslationsLoadingEs implements TranslationsLoadingEn {
	_TranslationsLoadingEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get loading => 'Cargando...';
}

// Path: image_detail
class _TranslationsImageDetailEs implements TranslationsImageDetailEn {
	_TranslationsImageDetailEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Imagen';
}

// Path: home
class _TranslationsHomeEs implements TranslationsHomeEn {
	_TranslationsHomeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'MasterFabric Core';
	@override String get description => 'Un framework completo de Flutter para construir aplicaciones móviles escalables y mantenibles con componentes preconstruidos, patrones de gestión de estado y utilidades auxiliares.';
	@override String get home_view_hidden => 'La vista de inicio está oculta';
	@override String get show_home_view => 'Mostrar Vista de Inicio';
	@override String get quick_navigation => 'Navegación Rápida';
	@override String get architecture => 'Arquitectura';
	@override String get core_features => 'Características Principales';
	@override String get helper_modules => 'Módulos Auxiliares';
	@override String get getting_started => 'Comenzar';
	@override String get products => 'Productos';
	@override String get products_subtitle => 'Lista de productos de ejemplo con búsqueda';
	@override String get profile => 'Perfil';
	@override String get profile_subtitle => 'Perfil de usuario con información del dispositivo';
	@override String get helper_cases => 'Casos de Ayuda';
	@override String get helper_cases_subtitle => 'Explora todas las utilidades auxiliares';
	@override String get masterview_cubit => 'MasterViewCubit';
	@override String get masterview_cubit_desc => 'Clase de vista base con gestión de estado Cubit integrada, hooks de ciclo de vida y patrones de UI comunes.';
	@override String get base_viewmodel_cubit => 'BaseViewModelCubit';
	@override String get base_viewmodel_cubit_desc => 'Cubit extendido con patrón stateChanger para transiciones de estado limpias y separación de lógica de negocio.';
	@override String get injectable_di => 'Injectable DI';
	@override String get injectable_di_desc => 'Inyección de dependencias automática con GetIt y anotaciones injectable para resolución limpia de servicios.';
	@override String get gorouter_navigation => 'Navegación GoRouter';
	@override String get gorouter_navigation_desc => 'Enrutamiento declarativo con navegación type-safe, deep linking y soporte de guardias de ruta.';
	@override String get state_management => 'Gestión de Estado';
	@override String get state_management_desc => 'Patrones Cubit, HydratedCubit, BLoC';
	@override String get prebuilt_views => 'Vistas Preconstruidas';
	@override String get prebuilt_views_desc => 'Splash, Auth, Onboarding, Error, Empty';
	@override String get storage_solutions => 'Soluciones de Almacenamiento';
	@override String get storage_solutions_desc => 'SharedPreferences, HiveCE, Almacenamiento Seguro';
	@override String get theme_system => 'Sistema de Temas';
	@override String get theme_system_desc => 'Temas Claro/Oscuro, estilos personalizados';
	@override String get localization => 'Localización';
	@override String get localization_desc => 'Soporte i18n con slang';
	@override String get push_notifications => 'Notificaciones Push';
	@override String get push_notifications_desc => 'Integración OneSignal y Firebase FCM';
	@override String get webviewer => 'Visor Web';
	@override String get webviewer_desc => 'Renderizado HTML y soporte WebView';
	@override String get svg_helper => 'Ayudante SVG';
	@override String get svg_helper_desc => 'Fuentes SVG de activos, red, cadena';
	@override String get force_update => 'Actualización Forzada';
	@override String get force_update_desc => 'Verificación de versión y redirección a tienda';
	@override String get skeleton_loading => 'Carga de Esqueleto';
	@override String get skeleton_loading_desc => '10 estilos de animación para estados de carga';
	@override String get utilities => 'Utilidades';
	@override String get utilities_desc => 'DateTime, URL, Compartir, Descargar, Permisos';
	@override String get add_dependency => 'Agregar dependencia';
	@override String get initialize_main => 'Inicializar en main.dart';
	@override String get create_views => 'Crear vistas extendiendo MasterViewCubit';
	@override String get configure_routes => 'Configurar rutas con GoRouter';
	@override String get built_with => 'Construido con MasterFabric Core';
	@override String get flutter_framework => 'Framework Flutter para Aplicaciones Empresariales';
}

// Path: products
class _TranslationsProductsEs implements TranslationsProductsEn {
	_TranslationsProductsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Productos';
	@override String get products_view_hidden => 'La vista de productos está oculta';
	@override String get show_products_view => 'Mostrar Vista de Productos';
	@override String get no_products => 'No hay productos';
	@override String get no_results => 'No hay resultados';
}

// Path: profile
class _TranslationsProfileEs implements TranslationsProfileEn {
	_TranslationsProfileEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Perfil';
	@override String get profile_view_hidden => 'La vista de perfil está oculta';
	@override String get show_profile_view => 'Mostrar Vista de Perfil';
	@override String get device => 'Dispositivo';
	@override String get actions => 'Acciones';
	@override String get platform => 'plataforma';
	@override String get device_id => 'id_dispositivo';
	@override String get manufacturer => 'fabricante';
}

// Path: settings
class _TranslationsSettingsEs implements TranslationsSettingsEn {
	_TranslationsSettingsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuración';
	@override String get theme_mode => 'Modo de Tema';
	@override String get font_size => 'Tamaño de Fuente';
	@override String get colors => 'Colores';
	@override String get view_visibility => 'Visibilidad de Vista';
	@override String get icons => 'Iconos';
	@override String get language => 'Idioma';
	@override String get reset_to_defaults => 'Restablecer a Valores Predeterminados';
	@override String get restore_theme_settings => 'Restaurar todas las configuraciones de tema';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get english => 'Inglés';
	@override String get turkish => 'Turco';
	@override String get spanish => 'Español';
}

// Path: helpers
class _TranslationsHelpersEs implements TranslationsHelpersEn {
	_TranslationsHelpersEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ayudantes';
	@override String get core_utilities => 'Utilidades Principales';
	@override String get device_info => 'Información del Dispositivo';
	@override String get local_storage => 'Almacenamiento Local';
	@override String get hivece => 'HiveCE';
	@override String get date_time => 'Fecha y Hora';
	@override String get url_launcher => 'Lanzador de URL';
	@override String get permissions => 'Permisos';
	@override String get share => 'Compartir';
	@override String get file_download => 'Descarga de Archivos';
	@override String get app_config => 'Configuración de la App';
	@override String get package_info => 'Información del Paquete';
	@override String get svg_helper => 'Ayudante SVG';
	@override String get web_viewer => 'Visor Web';
	@override String get push_notifications => 'Notificaciones Push';
	@override String get force_update => 'Actualización Forzada';
	@override String get skeleton_loading => 'Carga de Esqueleto';
}

// Path: app_config
class _TranslationsAppConfigEs implements TranslationsAppConfigEn {
	_TranslationsAppConfigEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Configuración de la App';
	@override String get app_settings => 'appSettings';
	@override String get ui_configuration => 'uiConfiguration';
	@override String get splash_configuration => 'splashConfiguration';
	@override String get api_configuration => 'apiConfiguration';
	@override String get storage_configuration => 'storageConfiguration';
	@override String get null_value => 'null';
	@override String get items => 'elementos';
	@override String get keys => 'claves';
	@override String get config_file_path => 'assets/app_config.json';
}

// Path: device_info
class _TranslationsDeviceInfoEs implements TranslationsDeviceInfoEn {
	_TranslationsDeviceInfoEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información del Dispositivo';
	@override String get platform => 'plataforma';
	@override String get device_name => 'nombre_dispositivo';
	@override String get device_id => 'id_dispositivo';
	@override String get manufacturer => 'fabricante';
	@override String get model => 'modelo';
	@override String get system_version => 'version_sistema';
}

// Path: force_update
class _TranslationsForceUpdateEs implements TranslationsForceUpdateEn {
	_TranslationsForceUpdateEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Actualización Forzada';
	@override String get status => 'Estado';
	@override String get preview_ui_type => 'Tipo de UI de Vista Previa';
	@override String get simulation_mode => 'Modo de Simulación';
	@override String get preview_update_ui => 'Vista Previa de UI de Actualización';
	@override String get version_comparison => 'Comparación de Versiones';
	@override String get initialized => 'Inicializado';
	@override String get not_initialized => 'No Inicializado';
	@override String get app_version => 'Versión de la App';
	@override String get check_update => 'Verificar Actualización';
	@override String get open_store => 'Abrir Tienda';
	@override String get alert_dialog => 'Diálogo de Alerta';
	@override String get bottom_sheet => 'Hoja Inferior';
	@override String get full_screen => 'Pantalla Completa';
	@override String get compact_dialog_overlay => 'Superposición de diálogo compacto';
	@override String get modal_from_bottom => 'Modal desde abajo';
	@override String get blocking_full_page => 'Página completa bloqueante';
	@override String get use_simulation => 'Usar Simulación';
	@override String get current_version => 'Versión Actual';
	@override String get latest_version => 'Última Versión';
	@override String get minimum_version => 'Versión Mínima';
	@override String get simulation_tip => 'Consejo: Establece mínimo > actual para actualización forzada';
	@override String get optional_update => 'Actualización Opcional';
	@override String get optional_update_desc => 'Mostrar aviso de actualización descartable';
	@override String get recommended_update => 'Actualización Recomendada';
	@override String get recommended_update_desc => 'Mostrar aviso de actualización recomendada';
	@override String get force_update_desc => 'Mostrar pantalla de actualización bloqueante';
	@override String get version_comparator_examples => 'Ejemplos de Comparador de Versiones';
	@override String get older => 'más antiguo';
	@override String get newer => 'más nuevo';
	@override String get equal => 'igual';
	@override String get older_prerelease => 'más antiguo (pre-lanzamiento)';
	@override String get older_build => 'más antiguo (compilación)';
}

// Path: push_notification
class _TranslationsPushNotificationEs implements TranslationsPushNotificationEn {
	_TranslationsPushNotificationEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notificaciones Push';
	@override String get status => 'Estado';
	@override String get active_providers => 'Proveedores Activos';
	@override String get permissions => 'Permisos';
	@override String get device_tokens => 'Tokens del Dispositivo';
	@override String get topic_subscriptions => 'Suscripciones a Temas';
	@override String get user_targeting => 'Segmentación de Usuario';
	@override String get actions => 'Acciones';
	@override String get initialized => 'Inicializado';
	@override String get not_initialized => 'No Inicializado';
	@override String get providers_active => 'proveedor(es) activo(s)';
	@override String get tap_to_initialize => 'Toca para inicializar';
	@override String get initialize_to_see_providers => 'Inicializar para ver proveedores activos';
	@override String get no_providers_configured => 'No hay proveedores configurados';
	@override String get initialize_to_check_permissions => 'Inicializar para verificar permisos';
	@override String get initialize_to_see_tokens => 'Inicializar para ver tokens del dispositivo';
	@override String get no_token => 'Sin token';
	@override String get token_copied => 'Token copiado al portapapeles';
	@override String get opt_in => 'Participar';
	@override String get opt_out => 'No Participar';
	@override String get clear_all_data => 'Limpiar Todos los Datos';
	@override String get enter_topic_name => 'Ingresa el nombre del tema';
	@override String get subscribe => 'Suscribirse';
	@override String get no_topics_subscribed => 'No hay temas suscritos';
	@override String get enter_user_id => 'Ingresa el ID de usuario';
	@override String get set => 'Establecer';
	@override String get remove_user_id => 'Eliminar ID de Usuario (Cerrar Sesión)';
	@override String get onesignal => 'OneSignal';
	@override String get firebase => 'Firebase';
	@override String get custom => 'Personalizado';
}

// Path: storage
class _TranslationsStorageEs implements TranslationsStorageEn {
	_TranslationsStorageEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Almacenamiento Local';
	@override String get string => 'String';
	@override String get int => 'Int';
	@override String get double => 'Double';
	@override String get bool => 'Bool';
	@override String get key => 'clave';
	@override String get value => 'valor';
	@override String get true_value => 'verdadero';
	@override String get false_value => 'falso';
}

// Path: hivece_storage
class _TranslationsHiveceStorageEs implements TranslationsHiveceStorageEn {
	_TranslationsHiveceStorageEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Almacenamiento HiveCE';
	@override String get string => 'String';
	@override String get int => 'Int';
	@override String get double => 'Double';
	@override String get bool => 'Bool';
	@override String get list_string => 'List<String>';
	@override String get get_by_key => 'Obtener por Clave';
	@override String get all_items => 'Todos los Elementos';
	@override String get no_items => 'No hay elementos';
	@override String get key => 'clave';
	@override String get value => 'valor';
	@override String get enter_key => 'ingresa la clave';
	@override String get list_hint => 'a, b, c';
	@override String get true_value => 'verdadero';
	@override String get false_value => 'falso';
	@override String get get => 'Obtener';
}

// Path: share
class _TranslationsShareEs implements TranslationsShareEn {
	_TranslationsShareEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Compartir';
	@override String get share_file => 'Compartir Archivo';
	@override String get share_text => 'Compartir Texto';
	@override String get enter_text => 'Ingresa el texto';
}

// Path: download
class _TranslationsDownloadEs implements TranslationsDownloadEn {
	_TranslationsDownloadEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Descarga';
	@override String get download_file => 'Descargar Archivo';
	@override String get url => 'URL';
	@override String get filename => 'Nombre de Archivo';
}

// Path: datetime
class _TranslationsDatetimeEs implements TranslationsDatetimeEn {
	_TranslationsDatetimeEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Fecha y Hora';
	@override String get format_date => 'formatDate()';
	@override String get format_time => 'formatTime()';
	@override String get format_datetime => 'formatDateTime()';
	@override String get get_relative_time => 'getRelativeTime()';
	@override String get parse_date => 'parseDate()';
}

// Path: url_launcher
class _TranslationsUrlLauncherEs implements TranslationsUrlLauncherEn {
	_TranslationsUrlLauncherEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Lanzador de URL';
	@override String get url => 'URL';
	@override String get phone => 'Teléfono';
	@override String get email => 'Correo Electrónico';
	@override String get sms => 'SMS';
	@override String get launch => 'Lanzar';
}

// Path: svg_helper
class _TranslationsSvgHelperEs implements TranslationsSvgHelperEn {
	_TranslationsSvgHelperEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ayudante SVG';
	@override String get asset_svg => 'SVG de Activo';
	@override String get asset_svg_desc => 'Cargar SVG desde la carpeta de activos';
	@override String get color_tinting => 'Tinte de Color';
	@override String get color_tinting_desc => 'Cambiar el color SVG dinámicamente';
	@override String get size_variations => 'Variaciones de Tamaño';
	@override String get size_variations_desc => 'Diferentes tamaños de iconos';
	@override String get svg_from_string => 'SVG desde Cadena';
	@override String get svg_from_string_desc => 'Renderizar SVG desde datos de cadena sin procesar';
	@override String get themed_icon => 'Icono Temático';
	@override String get themed_icon_desc => 'Auto-coloreado desde IconTheme';
	@override String get using_svg_config => 'Usando SvgConfig';
	@override String get using_svg_config_desc => 'Preajustes de configuración reutilizables';
}

// Path: web_viewer
class _TranslationsWebViewerEs implements TranslationsWebViewerEn {
	_TranslationsWebViewerEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ayudante de Visor Web';
	@override String get sanitized_html => 'HTML Sanitizado';
	@override String get sanitized_html_desc => 'WebViewerHelper.html() - Seguro para contenido de usuario';
	@override String get style_presets => 'Preajustes de Estilo';
	@override String get style_presets_desc => 'Constructores de fábrica HtmlStyleConfig';
	@override String get extract_text => 'Extraer Texto';
	@override String get extract_text_desc => 'htmlWidget.extractText()';
	@override String get extract_links => 'Extraer Enlaces';
	@override String get extract_links_desc => 'htmlWidget.extractLinks()';
	@override String get no_links_found => 'No se encontraron enlaces';
	@override String get to_widget => 'A Widget';
	@override String get to_widget_desc => 'htmlWidget.toWidget()';
	@override String get web_url_viewer => 'Visor de URL Web';
	@override String get web_url_viewer_desc => 'WebViewerHelper.url() - WebView completo con navegación';
	@override String get enter_url => 'Ingresa la URL...';
	@override String get go => 'Ir';
	@override String get show_navigation => 'Mostrar Navegación: ';
	@override String get preview => 'Vista Previa';
	@override String get link_tapped => 'Enlace tocado: ';
}

// Path: permissions_helper
class _TranslationsPermissionsHelperEs implements TranslationsPermissionsHelperEn {
	_TranslationsPermissionsHelperEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Permisos';
	@override String get runtime_permissions => 'Permisos en Tiempo de Ejecución';
	@override String get request => 'Solicitar';
	@override String get granted => 'concedido';
	@override String get denied => 'denegado';
	@override String get unknown => 'desconocido';
}

// Path: package_info
class _TranslationsPackageInfoEs implements TranslationsPackageInfoEn {
	_TranslationsPackageInfoEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Información del Paquete';
}

// Path: skeleton
class _TranslationsSkeletonEs implements TranslationsSkeletonEn {
	_TranslationsSkeletonEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ayudante de Esqueleto';
	@override String get animation => 'Animación:';
	@override String get theme => 'Tema:';
	@override String get light => 'Claro';
	@override String get dark => 'Oscuro';
	@override String get basic_shapes => 'Formas Básicas';
	@override String get text_shapes => 'Formas de Texto';
	@override String get avatar_shapes => 'Formas de Avatar';
	@override String get custom_shapes => 'Formas Personalizadas';
	@override String get rectangle => 'Rectángulo';
	@override String get circle => 'Círculo';
	@override String get rounded => 'Redondeado';
	@override String get text_line => 'Línea de Texto';
	@override String get paragraph => 'Párrafo';
	@override String get small => 'Pequeño';
	@override String get medium => 'Mediano';
	@override String get large => 'Grande';
	@override String get diamond => 'Diamante';
	@override String get hexagon => 'Hexágono';
	@override String get star => 'Estrella';
	@override String get list_items => 'Elementos de Lista';
	@override String get cards => 'Tarjetas';
	@override String get profile => 'Perfil';
	@override String get social_post => 'Publicación Social';
	@override String get stories => 'Historias';
	@override String get product_cards => 'Tarjetas de Producto';
	@override String get article => 'Artículo';
	@override String get color_themes => 'Temas de Color';
	@override String get dark_theme => 'Tema Oscuro';
}

// Path: settings_widgets
class _TranslationsSettingsWidgetsEs implements TranslationsSettingsWidgetsEn {
	_TranslationsSettingsWidgetsEs._(this._root);

	final TranslationsEs _root; // ignore: unused_field

	// Translations
	@override String get reset_dialog_title => 'Restablecer a Valores Predeterminados';
	@override String get reset_dialog_content => 'Esto restablecerá todas las configuraciones de tema a sus valores predeterminados. Esta acción no se puede deshacer.';
	@override String get reset => 'Restablecer';
	@override String get show_icons => 'Mostrar Iconos';
	@override String get toggle_icon_visibility => 'Alternar visibilidad de iconos globalmente';
}

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.ok' => 'OK',
			'common.cancel' => 'Cancelar',
			'common.yes' => 'Sí',
			'common.no' => 'No',
			'common.save' => 'Guardar',
			'common.delete' => 'Eliminar',
			'common.edit' => 'Editar',
			'common.close' => 'Cerrar',
			'common.back' => 'Atrás',
			'common.next' => 'Siguiente',
			'common.previous' => 'Anterior',
			'common.done' => 'Hecho',
			'common.loading' => 'Cargando...',
			'common.error' => 'Error',
			'common.success' => 'Éxito',
			'common.dismiss' => 'Descartar',
			'common.grant' => 'Conceder',
			'common.undo' => 'Deshacer',
			'common.retry' => 'Reintentar',
			'common.refresh' => 'Actualizar',
			'common.initialize' => 'Inicializar',
			'common.set' => 'Establecer',
			'common.subscribe' => 'Suscribirse',
			'common.user' => 'Usuario',
			'auth.title' => 'Autenticación',
			'auth.sign_in' => 'Iniciar Sesión',
			'auth.sign_up' => 'Registrarse',
			'auth.email' => 'Correo Electrónico',
			'auth.password' => 'Contraseña',
			'auth.forgot_password' => '¿Olvidaste tu Contraseña?',
			'auth.remember_me' => 'Recordarme',
			'auth.sign_in_failed' => 'Error al iniciar sesión',
			'auth.sign_up_failed' => 'Error al registrarse',
			'account.title' => 'Cuenta',
			'account.profile' => 'Perfil',
			'account.settings' => 'Configuración',
			'account.logout' => 'Cerrar Sesión',
			'account.sign_out' => 'Cerrar Sesión',
			'onboarding.skip' => 'Omitir',
			'onboarding.get_started' => 'Comenzar',
			'onboarding.previous' => 'Anterior',
			'onboarding.next' => 'Siguiente',
			'onboarding.no_pages_configured' => 'No hay páginas de bienvenida configuradas',
			'permissions.title' => 'Permisos Requeridos',
			'permissions.description' => 'Esta aplicación necesita ciertos permisos para funcionar correctamente.',
			'permissions.grant' => 'Conceder',
			'permissions.grant_all' => 'Conceder Todos los Permisos',
			'permissions.denied' => 'Permiso Denegado',
			'permissions.request_permissions' => 'Solicitar Permisos',
			'search.hint' => 'Buscar...',
			'search.no_results' => 'No se encontraron resultados',
			'error.generic' => 'Algo salió mal. Por favor, inténtalo de nuevo.',
			'error.network' => 'Error de red. Por favor, verifica tu conexión.',
			'error.unauthorized' => 'No estás autorizado para realizar esta acción.',
			'error.error_code' => 'Código de Error',
			'splash.loading' => 'Cargando...',
			'splash.webview' => 'Vista Web',
			'splash.error' => 'Ocurrió un error',
			'splash.maintenance' => 'En mantenimiento',
			'splash.empty' => 'No hay datos disponibles',
			'splash.unauthorized' => 'No autorizado',
			'splash.timeout' => 'Tiempo de espera agotado',
			'empty_view.title' => 'No hay contenido disponible',
			'empty_view.description' => 'No hay nada que mostrar aquí.',
			'loading.loading' => 'Cargando...',
			'image_detail.title' => 'Imagen',
			'home.title' => 'MasterFabric Core',
			'home.description' => 'Un framework completo de Flutter para construir aplicaciones móviles escalables y mantenibles con componentes preconstruidos, patrones de gestión de estado y utilidades auxiliares.',
			'home.home_view_hidden' => 'La vista de inicio está oculta',
			'home.show_home_view' => 'Mostrar Vista de Inicio',
			'home.quick_navigation' => 'Navegación Rápida',
			'home.architecture' => 'Arquitectura',
			'home.core_features' => 'Características Principales',
			'home.helper_modules' => 'Módulos Auxiliares',
			'home.getting_started' => 'Comenzar',
			'home.products' => 'Productos',
			'home.products_subtitle' => 'Lista de productos de ejemplo con búsqueda',
			'home.profile' => 'Perfil',
			'home.profile_subtitle' => 'Perfil de usuario con información del dispositivo',
			'home.helper_cases' => 'Casos de Ayuda',
			'home.helper_cases_subtitle' => 'Explora todas las utilidades auxiliares',
			'home.masterview_cubit' => 'MasterViewCubit',
			'home.masterview_cubit_desc' => 'Clase de vista base con gestión de estado Cubit integrada, hooks de ciclo de vida y patrones de UI comunes.',
			'home.base_viewmodel_cubit' => 'BaseViewModelCubit',
			'home.base_viewmodel_cubit_desc' => 'Cubit extendido con patrón stateChanger para transiciones de estado limpias y separación de lógica de negocio.',
			'home.injectable_di' => 'Injectable DI',
			'home.injectable_di_desc' => 'Inyección de dependencias automática con GetIt y anotaciones injectable para resolución limpia de servicios.',
			'home.gorouter_navigation' => 'Navegación GoRouter',
			'home.gorouter_navigation_desc' => 'Enrutamiento declarativo con navegación type-safe, deep linking y soporte de guardias de ruta.',
			'home.state_management' => 'Gestión de Estado',
			'home.state_management_desc' => 'Patrones Cubit, HydratedCubit, BLoC',
			'home.prebuilt_views' => 'Vistas Preconstruidas',
			'home.prebuilt_views_desc' => 'Splash, Auth, Onboarding, Error, Empty',
			'home.storage_solutions' => 'Soluciones de Almacenamiento',
			'home.storage_solutions_desc' => 'SharedPreferences, HiveCE, Almacenamiento Seguro',
			'home.theme_system' => 'Sistema de Temas',
			'home.theme_system_desc' => 'Temas Claro/Oscuro, estilos personalizados',
			'home.localization' => 'Localización',
			'home.localization_desc' => 'Soporte i18n con slang',
			'home.push_notifications' => 'Notificaciones Push',
			'home.push_notifications_desc' => 'Integración OneSignal y Firebase FCM',
			'home.webviewer' => 'Visor Web',
			'home.webviewer_desc' => 'Renderizado HTML y soporte WebView',
			'home.svg_helper' => 'Ayudante SVG',
			'home.svg_helper_desc' => 'Fuentes SVG de activos, red, cadena',
			'home.force_update' => 'Actualización Forzada',
			'home.force_update_desc' => 'Verificación de versión y redirección a tienda',
			'home.skeleton_loading' => 'Carga de Esqueleto',
			'home.skeleton_loading_desc' => '10 estilos de animación para estados de carga',
			'home.utilities' => 'Utilidades',
			'home.utilities_desc' => 'DateTime, URL, Compartir, Descargar, Permisos',
			'home.add_dependency' => 'Agregar dependencia',
			'home.initialize_main' => 'Inicializar en main.dart',
			'home.create_views' => 'Crear vistas extendiendo MasterViewCubit',
			'home.configure_routes' => 'Configurar rutas con GoRouter',
			'home.built_with' => 'Construido con MasterFabric Core',
			'home.flutter_framework' => 'Framework Flutter para Aplicaciones Empresariales',
			'products.title' => 'Productos',
			'products.products_view_hidden' => 'La vista de productos está oculta',
			'products.show_products_view' => 'Mostrar Vista de Productos',
			'products.no_products' => 'No hay productos',
			'products.no_results' => 'No hay resultados',
			'profile.title' => 'Perfil',
			'profile.profile_view_hidden' => 'La vista de perfil está oculta',
			'profile.show_profile_view' => 'Mostrar Vista de Perfil',
			'profile.device' => 'Dispositivo',
			'profile.actions' => 'Acciones',
			'profile.platform' => 'plataforma',
			'profile.device_id' => 'id_dispositivo',
			'profile.manufacturer' => 'fabricante',
			'settings.title' => 'Configuración',
			'settings.theme_mode' => 'Modo de Tema',
			'settings.font_size' => 'Tamaño de Fuente',
			'settings.colors' => 'Colores',
			'settings.view_visibility' => 'Visibilidad de Vista',
			'settings.icons' => 'Iconos',
			'settings.language' => 'Idioma',
			'settings.reset_to_defaults' => 'Restablecer a Valores Predeterminados',
			'settings.restore_theme_settings' => 'Restaurar todas las configuraciones de tema',
			'settings.light' => 'Claro',
			'settings.dark' => 'Oscuro',
			'settings.english' => 'Inglés',
			'settings.turkish' => 'Turco',
			'settings.spanish' => 'Español',
			'helpers.title' => 'Ayudantes',
			'helpers.core_utilities' => 'Utilidades Principales',
			'helpers.device_info' => 'Información del Dispositivo',
			'helpers.local_storage' => 'Almacenamiento Local',
			'helpers.hivece' => 'HiveCE',
			'helpers.date_time' => 'Fecha y Hora',
			'helpers.url_launcher' => 'Lanzador de URL',
			'helpers.permissions' => 'Permisos',
			'helpers.share' => 'Compartir',
			'helpers.file_download' => 'Descarga de Archivos',
			'helpers.app_config' => 'Configuración de la App',
			'helpers.package_info' => 'Información del Paquete',
			'helpers.svg_helper' => 'Ayudante SVG',
			'helpers.web_viewer' => 'Visor Web',
			'helpers.push_notifications' => 'Notificaciones Push',
			'helpers.force_update' => 'Actualización Forzada',
			'helpers.skeleton_loading' => 'Carga de Esqueleto',
			'app_config.title' => 'Configuración de la App',
			'app_config.app_settings' => 'appSettings',
			'app_config.ui_configuration' => 'uiConfiguration',
			'app_config.splash_configuration' => 'splashConfiguration',
			'app_config.api_configuration' => 'apiConfiguration',
			'app_config.storage_configuration' => 'storageConfiguration',
			'app_config.null_value' => 'null',
			'app_config.items' => 'elementos',
			'app_config.keys' => 'claves',
			'app_config.config_file_path' => 'assets/app_config.json',
			'device_info.title' => 'Información del Dispositivo',
			'device_info.platform' => 'plataforma',
			'device_info.device_name' => 'nombre_dispositivo',
			'device_info.device_id' => 'id_dispositivo',
			'device_info.manufacturer' => 'fabricante',
			'device_info.model' => 'modelo',
			'device_info.system_version' => 'version_sistema',
			'force_update.title' => 'Actualización Forzada',
			'force_update.status' => 'Estado',
			'force_update.preview_ui_type' => 'Tipo de UI de Vista Previa',
			'force_update.simulation_mode' => 'Modo de Simulación',
			'force_update.preview_update_ui' => 'Vista Previa de UI de Actualización',
			'force_update.version_comparison' => 'Comparación de Versiones',
			'force_update.initialized' => 'Inicializado',
			'force_update.not_initialized' => 'No Inicializado',
			'force_update.app_version' => 'Versión de la App',
			'force_update.check_update' => 'Verificar Actualización',
			'force_update.open_store' => 'Abrir Tienda',
			'force_update.alert_dialog' => 'Diálogo de Alerta',
			'force_update.bottom_sheet' => 'Hoja Inferior',
			'force_update.full_screen' => 'Pantalla Completa',
			'force_update.compact_dialog_overlay' => 'Superposición de diálogo compacto',
			'force_update.modal_from_bottom' => 'Modal desde abajo',
			'force_update.blocking_full_page' => 'Página completa bloqueante',
			'force_update.use_simulation' => 'Usar Simulación',
			'force_update.current_version' => 'Versión Actual',
			'force_update.latest_version' => 'Última Versión',
			'force_update.minimum_version' => 'Versión Mínima',
			'force_update.simulation_tip' => 'Consejo: Establece mínimo > actual para actualización forzada',
			'force_update.optional_update' => 'Actualización Opcional',
			'force_update.optional_update_desc' => 'Mostrar aviso de actualización descartable',
			'force_update.recommended_update' => 'Actualización Recomendada',
			'force_update.recommended_update_desc' => 'Mostrar aviso de actualización recomendada',
			'force_update.force_update_desc' => 'Mostrar pantalla de actualización bloqueante',
			'force_update.version_comparator_examples' => 'Ejemplos de Comparador de Versiones',
			'force_update.older' => 'más antiguo',
			'force_update.newer' => 'más nuevo',
			'force_update.equal' => 'igual',
			'force_update.older_prerelease' => 'más antiguo (pre-lanzamiento)',
			'force_update.older_build' => 'más antiguo (compilación)',
			'push_notification.title' => 'Notificaciones Push',
			'push_notification.status' => 'Estado',
			'push_notification.active_providers' => 'Proveedores Activos',
			'push_notification.permissions' => 'Permisos',
			'push_notification.device_tokens' => 'Tokens del Dispositivo',
			'push_notification.topic_subscriptions' => 'Suscripciones a Temas',
			'push_notification.user_targeting' => 'Segmentación de Usuario',
			'push_notification.actions' => 'Acciones',
			'push_notification.initialized' => 'Inicializado',
			'push_notification.not_initialized' => 'No Inicializado',
			'push_notification.providers_active' => 'proveedor(es) activo(s)',
			'push_notification.tap_to_initialize' => 'Toca para inicializar',
			'push_notification.initialize_to_see_providers' => 'Inicializar para ver proveedores activos',
			'push_notification.no_providers_configured' => 'No hay proveedores configurados',
			'push_notification.initialize_to_check_permissions' => 'Inicializar para verificar permisos',
			'push_notification.initialize_to_see_tokens' => 'Inicializar para ver tokens del dispositivo',
			'push_notification.no_token' => 'Sin token',
			'push_notification.token_copied' => 'Token copiado al portapapeles',
			'push_notification.opt_in' => 'Participar',
			'push_notification.opt_out' => 'No Participar',
			'push_notification.clear_all_data' => 'Limpiar Todos los Datos',
			'push_notification.enter_topic_name' => 'Ingresa el nombre del tema',
			'push_notification.subscribe' => 'Suscribirse',
			'push_notification.no_topics_subscribed' => 'No hay temas suscritos',
			'push_notification.enter_user_id' => 'Ingresa el ID de usuario',
			'push_notification.set' => 'Establecer',
			'push_notification.remove_user_id' => 'Eliminar ID de Usuario (Cerrar Sesión)',
			'push_notification.onesignal' => 'OneSignal',
			'push_notification.firebase' => 'Firebase',
			'push_notification.custom' => 'Personalizado',
			'storage.title' => 'Almacenamiento Local',
			'storage.string' => 'String',
			'storage.int' => 'Int',
			'storage.double' => 'Double',
			'storage.bool' => 'Bool',
			'storage.key' => 'clave',
			'storage.value' => 'valor',
			'storage.true_value' => 'verdadero',
			'storage.false_value' => 'falso',
			'hivece_storage.title' => 'Almacenamiento HiveCE',
			'hivece_storage.string' => 'String',
			'hivece_storage.int' => 'Int',
			'hivece_storage.double' => 'Double',
			'hivece_storage.bool' => 'Bool',
			'hivece_storage.list_string' => 'List<String>',
			'hivece_storage.get_by_key' => 'Obtener por Clave',
			'hivece_storage.all_items' => 'Todos los Elementos',
			'hivece_storage.no_items' => 'No hay elementos',
			'hivece_storage.key' => 'clave',
			'hivece_storage.value' => 'valor',
			'hivece_storage.enter_key' => 'ingresa la clave',
			'hivece_storage.list_hint' => 'a, b, c',
			'hivece_storage.true_value' => 'verdadero',
			'hivece_storage.false_value' => 'falso',
			'hivece_storage.get' => 'Obtener',
			'share.title' => 'Compartir',
			'share.share_file' => 'Compartir Archivo',
			'share.share_text' => 'Compartir Texto',
			'share.enter_text' => 'Ingresa el texto',
			'download.title' => 'Descarga',
			'download.download_file' => 'Descargar Archivo',
			'download.url' => 'URL',
			'download.filename' => 'Nombre de Archivo',
			'datetime.title' => 'Fecha y Hora',
			'datetime.format_date' => 'formatDate()',
			'datetime.format_time' => 'formatTime()',
			'datetime.format_datetime' => 'formatDateTime()',
			'datetime.get_relative_time' => 'getRelativeTime()',
			'datetime.parse_date' => 'parseDate()',
			'url_launcher.title' => 'Lanzador de URL',
			'url_launcher.url' => 'URL',
			'url_launcher.phone' => 'Teléfono',
			'url_launcher.email' => 'Correo Electrónico',
			'url_launcher.sms' => 'SMS',
			'url_launcher.launch' => 'Lanzar',
			'svg_helper.title' => 'Ayudante SVG',
			'svg_helper.asset_svg' => 'SVG de Activo',
			'svg_helper.asset_svg_desc' => 'Cargar SVG desde la carpeta de activos',
			'svg_helper.color_tinting' => 'Tinte de Color',
			'svg_helper.color_tinting_desc' => 'Cambiar el color SVG dinámicamente',
			'svg_helper.size_variations' => 'Variaciones de Tamaño',
			'svg_helper.size_variations_desc' => 'Diferentes tamaños de iconos',
			'svg_helper.svg_from_string' => 'SVG desde Cadena',
			'svg_helper.svg_from_string_desc' => 'Renderizar SVG desde datos de cadena sin procesar',
			'svg_helper.themed_icon' => 'Icono Temático',
			'svg_helper.themed_icon_desc' => 'Auto-coloreado desde IconTheme',
			'svg_helper.using_svg_config' => 'Usando SvgConfig',
			'svg_helper.using_svg_config_desc' => 'Preajustes de configuración reutilizables',
			'web_viewer.title' => 'Ayudante de Visor Web',
			'web_viewer.sanitized_html' => 'HTML Sanitizado',
			'web_viewer.sanitized_html_desc' => 'WebViewerHelper.html() - Seguro para contenido de usuario',
			'web_viewer.style_presets' => 'Preajustes de Estilo',
			'web_viewer.style_presets_desc' => 'Constructores de fábrica HtmlStyleConfig',
			'web_viewer.extract_text' => 'Extraer Texto',
			'web_viewer.extract_text_desc' => 'htmlWidget.extractText()',
			'web_viewer.extract_links' => 'Extraer Enlaces',
			'web_viewer.extract_links_desc' => 'htmlWidget.extractLinks()',
			'web_viewer.no_links_found' => 'No se encontraron enlaces',
			'web_viewer.to_widget' => 'A Widget',
			'web_viewer.to_widget_desc' => 'htmlWidget.toWidget()',
			'web_viewer.web_url_viewer' => 'Visor de URL Web',
			'web_viewer.web_url_viewer_desc' => 'WebViewerHelper.url() - WebView completo con navegación',
			'web_viewer.enter_url' => 'Ingresa la URL...',
			'web_viewer.go' => 'Ir',
			'web_viewer.show_navigation' => 'Mostrar Navegación: ',
			'web_viewer.preview' => 'Vista Previa',
			'web_viewer.link_tapped' => 'Enlace tocado: ',
			'permissions_helper.title' => 'Permisos',
			'permissions_helper.runtime_permissions' => 'Permisos en Tiempo de Ejecución',
			'permissions_helper.request' => 'Solicitar',
			'permissions_helper.granted' => 'concedido',
			'permissions_helper.denied' => 'denegado',
			'permissions_helper.unknown' => 'desconocido',
			'package_info.title' => 'Información del Paquete',
			'skeleton.title' => 'Ayudante de Esqueleto',
			'skeleton.animation' => 'Animación:',
			'skeleton.theme' => 'Tema:',
			'skeleton.light' => 'Claro',
			'skeleton.dark' => 'Oscuro',
			'skeleton.basic_shapes' => 'Formas Básicas',
			'skeleton.text_shapes' => 'Formas de Texto',
			'skeleton.avatar_shapes' => 'Formas de Avatar',
			'skeleton.custom_shapes' => 'Formas Personalizadas',
			'skeleton.rectangle' => 'Rectángulo',
			'skeleton.circle' => 'Círculo',
			'skeleton.rounded' => 'Redondeado',
			'skeleton.text_line' => 'Línea de Texto',
			'skeleton.paragraph' => 'Párrafo',
			'skeleton.small' => 'Pequeño',
			'skeleton.medium' => 'Mediano',
			'skeleton.large' => 'Grande',
			'skeleton.diamond' => 'Diamante',
			'skeleton.hexagon' => 'Hexágono',
			'skeleton.star' => 'Estrella',
			'skeleton.list_items' => 'Elementos de Lista',
			'skeleton.cards' => 'Tarjetas',
			'skeleton.profile' => 'Perfil',
			'skeleton.social_post' => 'Publicación Social',
			'skeleton.stories' => 'Historias',
			'skeleton.product_cards' => 'Tarjetas de Producto',
			'skeleton.article' => 'Artículo',
			'skeleton.color_themes' => 'Temas de Color',
			'skeleton.dark_theme' => 'Tema Oscuro',
			'settings_widgets.reset_dialog_title' => 'Restablecer a Valores Predeterminados',
			'settings_widgets.reset_dialog_content' => 'Esto restablecerá todas las configuraciones de tema a sus valores predeterminados. Esta acción no se puede deshacer.',
			'settings_widgets.reset' => 'Restablecer',
			'settings_widgets.show_icons' => 'Mostrar Iconos',
			'settings_widgets.toggle_icon_visibility' => 'Alternar visibilidad de iconos globalmente',
			_ => null,
		};
	}
}
