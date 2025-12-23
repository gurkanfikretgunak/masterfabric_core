import 'package:equatable/equatable.dart';

/// Profile State
class ProfileState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final String? userName;
  final String? email;
  final String? platform;
  final String? deviceId;
  final String? manufacturer;
  final bool showSettingsDialog;
  final bool notificationsEnabled;
  final String themeMode;

  const ProfileState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    this.userName,
    this.email,
    this.platform,
    this.deviceId,
    this.manufacturer,
    this.showSettingsDialog = false,
    this.notificationsEnabled = true,
    this.themeMode = 'light',
  });

  const ProfileState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        userName = null,
        email = null,
        platform = null,
        deviceId = null,
        manufacturer = null,
        showSettingsDialog = false,
        notificationsEnabled = true,
        themeMode = 'light';

  const ProfileState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        userName = null,
        email = null,
        platform = null,
        deviceId = null,
        manufacturer = null,
        showSettingsDialog = false,
        notificationsEnabled = true,
        themeMode = 'light';

  const ProfileState.loaded({
    this.userName,
    this.email,
    this.platform,
    this.deviceId,
    this.manufacturer,
    this.showSettingsDialog = false,
    this.notificationsEnabled = true,
    this.themeMode = 'light',
  })  : isLoading = false,
        hasError = false,
        errorMessage = null;

  const ProfileState.error({required this.errorMessage})
      : isLoading = false,
        hasError = true,
        userName = null,
        email = null,
        platform = null,
        deviceId = null,
        manufacturer = null,
        showSettingsDialog = false,
        notificationsEnabled = true,
        themeMode = 'light';

  ProfileState copyWith({
    bool? isLoading,
    bool? hasError,
    String? errorMessage,
    String? userName,
    String? email,
    String? platform,
    String? deviceId,
    String? manufacturer,
    bool? showSettingsDialog,
    bool? notificationsEnabled,
    String? themeMode,
  }) {
    return ProfileState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      platform: platform ?? this.platform,
      deviceId: deviceId ?? this.deviceId,
      manufacturer: manufacturer ?? this.manufacturer,
      showSettingsDialog: showSettingsDialog ?? this.showSettingsDialog,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
      themeMode: themeMode ?? this.themeMode,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        hasError,
        errorMessage,
        userName,
        email,
        platform,
        deviceId,
        manufacturer,
        showSettingsDialog,
        notificationsEnabled,
        themeMode,
      ];
}

