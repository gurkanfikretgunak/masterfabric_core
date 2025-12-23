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

  const ProfileState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    this.userName,
    this.email,
    this.platform,
    this.deviceId,
    this.manufacturer,
  });

  const ProfileState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        userName = null,
        email = null,
        platform = null,
        deviceId = null,
        manufacturer = null;

  const ProfileState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        userName = null,
        email = null,
        platform = null,
        deviceId = null,
        manufacturer = null;

  const ProfileState.loaded({
    this.userName,
    this.email,
    this.platform,
    this.deviceId,
    this.manufacturer,
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
        manufacturer = null;

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
      ];
}

