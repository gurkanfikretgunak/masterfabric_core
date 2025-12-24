import 'package:masterfabric_core/masterfabric_core.dart';
import 'package:masterfabric_core_example/features/helpers/download/cubit/download_state.dart';

/// Download Cubit
class DownloadCubit extends BaseViewModelCubit<DownloadState> {
  DownloadCubit() : super(const DownloadState.initial());

  Future<void> downloadFile(String url, String fileName) async {
    stateChanger(const DownloadState.downloading(
      downloadProgress: 0.0,
      downloadStatus: 'Downloading...',
    ));

    try {
      final filePath = await FileDownloadHelper.downloadFile(
        url,
        fileName,
        onProgress: (received, total) {
          final progress = received / total;
          stateChanger(DownloadState.downloading(
            downloadProgress: progress,
            downloadStatus: 'Downloading: ${(progress * 100).toStringAsFixed(1)}%',
          ));
        },
      );

      if (filePath != null) {
        stateChanger(DownloadState.completed(downloadedFilePath: filePath));
      } else {
        stateChanger(const DownloadState.failed(
          downloadStatus: 'Download failed',
        ));
      }
    } catch (e) {
      stateChanger(DownloadState.failed(
        downloadStatus: 'Error: $e',
      ));
    }
  }
}

