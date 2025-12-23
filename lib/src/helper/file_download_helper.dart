import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';

/// Helper class for file downloads with progress tracking
class FileDownloadHelper {
  /// Download a file with progress callback
  static Future<String?> downloadFile(
    String url,
    String fileName, {
    void Function(int received, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final dio = Dio();
      final appDir = await getApplicationDocumentsDirectory();
      final filePath = '${appDir.path}/$fileName';

      await dio.download(
        url,
        filePath,
        onReceiveProgress: onProgress,
        cancelToken: cancelToken,
      );

      return filePath;
    } catch (e) {
      return null;
    }
  }

  /// Download file to a specific directory
  static Future<String?> downloadToDirectory(
    String url,
    String directory,
    String fileName, {
    void Function(int received, int total)? onProgress,
    CancelToken? cancelToken,
  }) async {
    try {
      final dio = Dio();
      final dir = Directory(directory);
      if (!await dir.exists()) {
        await dir.create(recursive: true);
      }
      final filePath = '$directory/$fileName';

      await dio.download(
        url,
        filePath,
        onReceiveProgress: onProgress,
        cancelToken: cancelToken,
      );

      return filePath;
    } catch (e) {
      return null;
    }
  }

  /// Check if file exists
  static Future<bool> fileExists(String filePath) async {
    return await File(filePath).exists();
  }

  /// Delete a file
  static Future<bool> deleteFile(String filePath) async {
    try {
      final file = File(filePath);
      if (await file.exists()) {
        await file.delete();
        return true;
      }
      return false;
    } catch (e) {
      return false;
    }
  }
}
