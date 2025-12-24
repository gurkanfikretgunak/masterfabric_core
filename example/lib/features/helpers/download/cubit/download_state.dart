import 'package:equatable/equatable.dart';

/// Download State
class DownloadState extends Equatable {
  final bool isDownloading;
  final double downloadProgress;
  final String? downloadStatus;
  final String? downloadedFilePath;

  const DownloadState({
    required this.isDownloading,
    required this.downloadProgress,
    this.downloadStatus,
    this.downloadedFilePath,
  });

  const DownloadState.initial()
      : isDownloading = false,
        downloadProgress = 0.0,
        downloadStatus = null,
        downloadedFilePath = null;

  const DownloadState.downloading({
    required this.downloadProgress,
    required this.downloadStatus,
  })  : isDownloading = true,
        downloadedFilePath = null;

  const DownloadState.completed({
    required this.downloadedFilePath,
  })  : isDownloading = false,
        downloadProgress = 1.0,
        downloadStatus = 'Download completed';

  const DownloadState.failed({
    required this.downloadStatus,
  })  : isDownloading = false,
        downloadProgress = 0.0,
        downloadedFilePath = null;

  @override
  List<Object?> get props => [
        isDownloading,
        downloadProgress,
        downloadStatus,
        downloadedFilePath,
      ];
}

