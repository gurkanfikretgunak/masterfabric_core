import 'package:share_plus/share_plus.dart';

/// Helper class for content sharing
class ApplicationShareHelper {
  /// Share text
  static Future<void> shareText(String text, {String? subject}) async {
    await Share.share(text, subject: subject);
  }

  /// Share files
  static Future<void> shareFiles(List<String> paths, {
    String? text,
    String? subject,
  }) async {
    await Share.shareXFiles(
      paths.map((path) => XFile(path)).toList(),
      text: text,
      subject: subject,
    );
  }

  /// Share a single file
  static Future<void> shareFile(String path, {
    String? text,
    String? subject,
  }) async {
    await shareFiles([path], text: text, subject: subject);
  }
}
