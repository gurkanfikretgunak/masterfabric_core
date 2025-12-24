import 'package:equatable/equatable.dart';

/// Device Info State
class DeviceInfoState extends Equatable {
  final bool isLoading;
  final bool hasError;
  final String? errorMessage;
  final String? platform;
  final String? deviceName;
  final String? deviceId;
  final String? manufacturer;
  final String? model;
  final String? systemVersion;

  const DeviceInfoState({
    required this.isLoading,
    required this.hasError,
    this.errorMessage,
    this.platform,
    this.deviceName,
    this.deviceId,
    this.manufacturer,
    this.model,
    this.systemVersion,
  });

  const DeviceInfoState.initial()
      : isLoading = false,
        hasError = false,
        errorMessage = null,
        platform = null,
        deviceName = null,
        deviceId = null,
        manufacturer = null,
        model = null,
        systemVersion = null;

  const DeviceInfoState.loading()
      : isLoading = true,
        hasError = false,
        errorMessage = null,
        platform = null,
        deviceName = null,
        deviceId = null,
        manufacturer = null,
        model = null,
        systemVersion = null;

  const DeviceInfoState.loaded({
    required this.platform,
    required this.deviceName,
    required this.deviceId,
    required this.manufacturer,
    required this.model,
    required this.systemVersion,
  })  : isLoading = false,
        hasError = false,
        errorMessage = null;

  const DeviceInfoState.error({
    required this.errorMessage,
  })  : isLoading = false,
        hasError = true,
        platform = null,
        deviceName = null,
        deviceId = null,
        manufacturer = null,
        model = null,
        systemVersion = null;

  DeviceInfoState copyWith({
    bool? isLoading,
    bool? hasError,
    String? errorMessage,
    String? platform,
    String? deviceName,
    String? deviceId,
    String? manufacturer,
    String? model,
    String? systemVersion,
  }) {
    return DeviceInfoState(
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
      errorMessage: errorMessage ?? this.errorMessage,
      platform: platform ?? this.platform,
      deviceName: deviceName ?? this.deviceName,
      deviceId: deviceId ?? this.deviceId,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      systemVersion: systemVersion ?? this.systemVersion,
    );
  }

  @override
  List<Object?> get props => [
        isLoading,
        hasError,
        errorMessage,
        platform,
        deviceName,
        deviceId,
        manufacturer,
        model,
        systemVersion,
      ];
}

