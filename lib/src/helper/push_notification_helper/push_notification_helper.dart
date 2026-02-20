import 'dart:async';

import 'package:flutter/foundation.dart';

import 'package:masterfabric_core/src/helper/push_notification_helper/abstract/push_notification_provider_base.dart';
import 'package:masterfabric_core/src/helper/push_notification_helper/models/push_notification_models.dart';
import 'package:masterfabric_core/src/helper/push_notification_helper/providers/onesignal_provider.dart';

/// Push Notification Helper
///
/// A unified helper for managing multiple push notification providers.
/// Supports OneSignal, Firebase Cloud Messaging, and custom providers.
///
/// **Features:**
/// - Strategy pattern for multiple providers
/// - Configuration-driven initialization via app_config.json
/// - Unified streams for notification events across all providers
/// - Easy provider registration/unregistration
/// - Extensible for future providers
///
/// **Usage Example:**
/// ```dart
/// // Initialize from config
/// final config = PushNotificationConfig.fromJson(configJson);
/// await PushNotificationHelper.instance.initialize(config);
///
/// // Listen to notifications from all providers
/// PushNotificationHelper.instance.onNotificationReceived.listen((notification) {
///   print('Received from ${notification.source}: ${notification.title}');
/// });
///
/// // Subscribe to topic on specific provider
/// await PushNotificationHelper.instance.subscribeToTopic(
///   'news',
///   provider: PushNotificationProviderType.firebase,
/// );
///
/// // Subscribe to topic on all enabled providers
/// await PushNotificationHelper.instance.subscribeToTopicAll('news');
/// ```
class PushNotificationHelper {
  // Singleton pattern
  static final PushNotificationHelper _instance = PushNotificationHelper._internal();
  
  /// Get the singleton instance
  static PushNotificationHelper get instance => _instance;

  /// Factory constructor for singleton access
  factory PushNotificationHelper() => _instance;

  /// Private constructor
  PushNotificationHelper._internal();

  /// Registered providers
  final Map<PushNotificationProviderType, PushNotificationProviderBase> _providers = {};

  /// Configuration
  PushNotificationConfig? _config;

  /// Stream controller for unified notification events
  final StreamController<PushNotificationData> _notificationReceivedController =
      StreamController<PushNotificationData>.broadcast();

  /// Stream controller for unified notification actions
  final StreamController<NotificationActionResult> _notificationOpenedController =
      StreamController<NotificationActionResult>.broadcast();

  /// Provider stream subscriptions for cleanup
  final Map<PushNotificationProviderType, List<StreamSubscription>> _subscriptions = {};

  /// Initialization state
  bool _isInitialized = false;

  /// Whether the helper has been initialized
  bool get isInitialized => _isInitialized;

  /// The current configuration
  PushNotificationConfig? get config => _config;

  /// Get all registered providers
  Map<PushNotificationProviderType, PushNotificationProviderBase> get providers =>
      Map.unmodifiable(_providers);

  /// Get the default provider (if initialized)
  PushNotificationProviderBase? get defaultProvider {
    if (_config == null) return null;
    return _providers[_config!.defaultProvider];
  }

  /// Unified stream of notifications from all providers
  Stream<PushNotificationData> get onNotificationReceived =>
      _notificationReceivedController.stream;

  /// Unified stream of notification actions from all providers
  Stream<NotificationActionResult> get onNotificationOpened =>
      _notificationOpenedController.stream;

  /// Initialize the push notification system
  ///
  /// [config] - Configuration loaded from app_config.json
  ///
  /// Returns `true` if at least one provider was initialized successfully.
  ///
  /// **Example:**
  /// ```dart
  /// final configJson = await AssetConfigHelper().loadConfig('assets/app_config.json');
  /// final pushConfig = PushNotificationConfig.fromJson(
  ///   configJson['pushNotificationConfiguration']
  /// );
  /// await PushNotificationHelper.instance.initialize(pushConfig);
  /// ```
  Future<bool> initialize(PushNotificationConfig config) async {
    if (_isInitialized) {
      debugPrint('🔔 PushNotificationHelper: Already initialized');
      return true;
    }

    if (!config.enabled) {
      debugPrint('⚠️ PushNotificationHelper: Push notifications are disabled in config');
      return false;
    }

    _config = config;
    bool anyProviderInitialized = false;

    // Initialize OneSignal if enabled
    if (config.isProviderEnabled(PushNotificationProviderType.onesignal)) {
      final success = await _initializeProvider(
        PushNotificationProviderType.onesignal,
        OneSignalProvider(),
        config.oneSignalConfig,
      );
      anyProviderInitialized = anyProviderInitialized || success;
    }

    _isInitialized = anyProviderInitialized;
    
    if (_isInitialized) {
      debugPrint('✅ PushNotificationHelper: Initialized with ${_providers.length} provider(s)');
    } else {
      debugPrint('❌ PushNotificationHelper: No providers were initialized');
    }

    return _isInitialized;
  }

  /// Initialize a single provider
  Future<bool> _initializeProvider(
    PushNotificationProviderType type,
    PushNotificationProviderBase provider,
    ProviderConfig config,
  ) async {
    try {
      final success = await provider.initialize(config);
      
      if (success) {
        _providers[type] = provider;
        _setupProviderListeners(type, provider);
        debugPrint('✅ PushNotificationHelper: ${type.name} provider initialized');
        return true;
      }
      
      debugPrint('❌ PushNotificationHelper: ${type.name} provider failed to initialize');
      return false;
    } catch (e) {
      debugPrint('❌ PushNotificationHelper: Error initializing ${type.name}: $e');
      return false;
    }
  }

  /// Setup listeners for a provider's streams
  void _setupProviderListeners(
    PushNotificationProviderType type,
    PushNotificationProviderBase provider,
  ) {
    _subscriptions[type] = [];

    // Forward notification received events
    _subscriptions[type]!.add(
      provider.onNotificationReceived.listen((notification) {
        _notificationReceivedController.add(notification);
      }),
    );

    // Forward notification opened events
    _subscriptions[type]!.add(
      provider.onNotificationOpened.listen((result) {
        _notificationOpenedController.add(result);
      }),
    );
  }

  /// Register a custom provider
  ///
  /// Use this to add custom notification providers at runtime.
  ///
  /// [type] - The provider type (use PushNotificationProviderType.custom)
  /// [provider] - The provider instance
  /// [config] - Provider configuration
  ///
  /// **Example:**
  /// ```dart
  /// await PushNotificationHelper.instance.registerProvider(
  ///   PushNotificationProviderType.custom,
  ///   MyCustomProvider(),
  ///   ProviderConfig(enabled: true, settings: {'apiKey': 'xxx'}),
  /// );
  /// ```
  Future<bool> registerProvider(
    PushNotificationProviderType type,
    PushNotificationProviderBase provider,
    ProviderConfig config,
  ) async {
    if (_providers.containsKey(type)) {
      debugPrint('⚠️ PushNotificationHelper: Provider ${type.name} already registered');
      return false;
    }

    return await _initializeProvider(type, provider, config);
  }

  /// Unregister a provider
  ///
  /// [type] - The provider type to remove
  Future<void> unregisterProvider(PushNotificationProviderType type) async {
    final provider = _providers.remove(type);
    
    if (provider != null) {
      // Cancel subscriptions
      for (final subscription in _subscriptions[type] ?? []) {
        await subscription.cancel();
      }
      _subscriptions.remove(type);

      // Dispose provider
      await provider.dispose();
      debugPrint('✅ PushNotificationHelper: ${type.name} provider unregistered');
    }
  }

  /// Request permission from a specific provider or the default
  ///
  /// [provider] - Optional provider type. Uses default if not specified.
  Future<NotificationPermissionStatus> requestPermission({
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) {
      return NotificationPermissionStatus.unknown;
    }

    return await targetProvider.requestPermission();
  }

  /// Request permission from all enabled providers
  ///
  /// Returns a map of provider type to permission status.
  Future<Map<PushNotificationProviderType, NotificationPermissionStatus>>
      requestPermissionAll() async {
    final results = <PushNotificationProviderType, NotificationPermissionStatus>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.requestPermission();
    }

    return results;
  }

  /// Subscribe to a topic
  ///
  /// [topic] - The topic name
  /// [provider] - Optional provider. Uses default if not specified.
  Future<bool> subscribeToTopic(
    String topic, {
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return false;

    return await targetProvider.subscribeToTopic(topic);
  }

  /// Subscribe to a topic on all enabled providers
  Future<Map<PushNotificationProviderType, bool>> subscribeToTopicAll(
    String topic,
  ) async {
    final results = <PushNotificationProviderType, bool>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.subscribeToTopic(topic);
    }

    return results;
  }

  /// Unsubscribe from a topic
  ///
  /// [topic] - The topic name
  /// [provider] - Optional provider. Uses default if not specified.
  Future<bool> unsubscribeFromTopic(
    String topic, {
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return false;

    return await targetProvider.unsubscribeFromTopic(topic);
  }

  /// Unsubscribe from a topic on all enabled providers
  Future<Map<PushNotificationProviderType, bool>> unsubscribeFromTopicAll(
    String topic,
  ) async {
    final results = <PushNotificationProviderType, bool>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.unsubscribeFromTopic(topic);
    }

    return results;
  }

  /// Set external user ID
  ///
  /// [userId] - The user ID from your system
  /// [provider] - Optional provider. Uses default if not specified.
  Future<bool> setExternalUserId(
    String userId, {
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return false;

    return await targetProvider.setExternalUserId(userId);
  }

  /// Set external user ID on all enabled providers
  Future<Map<PushNotificationProviderType, bool>> setExternalUserIdAll(
    String userId,
  ) async {
    final results = <PushNotificationProviderType, bool>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.setExternalUserId(userId);
    }

    return results;
  }

  /// Remove external user ID
  ///
  /// [provider] - Optional provider. Uses default if not specified.
  Future<bool> removeExternalUserId({
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return false;

    return await targetProvider.removeExternalUserId();
  }

  /// Remove external user ID from all enabled providers
  Future<Map<PushNotificationProviderType, bool>> removeExternalUserIdAll() async {
    final results = <PushNotificationProviderType, bool>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.removeExternalUserId();
    }

    return results;
  }

  /// Get device token
  ///
  /// [provider] - Optional provider. Uses default if not specified.
  Future<String?> getDeviceToken({
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return null;

    return await targetProvider.getDeviceToken();
  }

  /// Get device tokens from all enabled providers
  Future<Map<PushNotificationProviderType, String?>> getDeviceTokenAll() async {
    final results = <PushNotificationProviderType, String?>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.getDeviceToken();
    }

    return results;
  }

  /// Set tags/attributes
  ///
  /// [tags] - Key-value pairs
  /// [provider] - Optional provider. Uses default if not specified.
  Future<bool> setTags(
    Map<String, dynamic> tags, {
    PushNotificationProviderType? provider,
  }) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return false;

    return await targetProvider.setTags(tags);
  }

  /// Set tags on all enabled providers
  Future<Map<PushNotificationProviderType, bool>> setTagsAll(
    Map<String, dynamic> tags,
  ) async {
    final results = <PushNotificationProviderType, bool>{};

    for (final entry in _providers.entries) {
      results[entry.key] = await entry.value.setTags(tags);
    }

    return results;
  }

  /// Opt in to push notifications
  ///
  /// [provider] - Optional provider. Uses default if not specified.
  Future<void> optIn({PushNotificationProviderType? provider}) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return;

    await targetProvider.optIn();
  }

  /// Opt in to all enabled providers
  Future<void> optInAll() async {
    for (final provider in _providers.values) {
      await provider.optIn();
    }
  }

  /// Opt out of push notifications
  ///
  /// [provider] - Optional provider. Uses default if not specified.
  Future<void> optOut({PushNotificationProviderType? provider}) async {
    final targetProvider = _getProvider(provider);
    if (targetProvider == null) return;

    await targetProvider.optOut();
  }

  /// Opt out of all enabled providers
  Future<void> optOutAll() async {
    for (final provider in _providers.values) {
      await provider.optOut();
    }
  }

  /// Clear all data (for logout/privacy)
  ///
  /// Clears data from all enabled providers.
  Future<void> clearAllData() async {
    for (final provider in _providers.values) {
      await provider.clearAllData();
    }
    debugPrint('✅ PushNotificationHelper: All data cleared');
  }

  /// Get a specific provider or the default
  PushNotificationProviderBase? _getProvider(PushNotificationProviderType? type) {
    if (type != null) {
      return _providers[type];
    }
    return defaultProvider;
  }

  /// Get provider by type
  ///
  /// Returns the provider instance for direct access to provider-specific features.
  T? getProvider<T extends PushNotificationProviderBase>(
    PushNotificationProviderType type,
  ) {
    return _providers[type] as T?;
  }

  /// Check if a provider is registered and initialized
  bool hasProvider(PushNotificationProviderType type) {
    return _providers.containsKey(type) && _providers[type]!.isInitialized;
  }

  /// Dispose all resources
  ///
  /// Call this when the app is being disposed.
  Future<void> dispose() async {
    // Cancel all subscriptions
    for (final subscriptions in _subscriptions.values) {
      for (final subscription in subscriptions) {
        await subscription.cancel();
      }
    }
    _subscriptions.clear();

    // Dispose all providers
    for (final provider in _providers.values) {
      await provider.dispose();
    }
    _providers.clear();

    // Close stream controllers
    await _notificationReceivedController.close();
    await _notificationOpenedController.close();

    _isInitialized = false;
    _config = null;

    debugPrint('🔔 PushNotificationHelper: Disposed');
  }

  /// Reset the helper for testing purposes
  @visibleForTesting
  Future<void> reset() async {
    await dispose();
    // Recreate stream controllers for reuse
    // Note: In production, dispose should only be called once
  }
}
