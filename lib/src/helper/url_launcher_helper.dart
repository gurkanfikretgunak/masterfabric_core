import 'package:url_launcher/url_launcher.dart' as launcher;

/// Helper class for launching URLs and external applications
class UrlLauncherHelper {
  /// Launch a URL
  static Future<bool> launchUrl(String url, {
    launcher.LaunchMode mode = launcher.LaunchMode.platformDefault,
  }) async {
    final uri = Uri.parse(url);
    if (await launcher.canLaunchUrl(uri)) {
      return await launcher.launchUrl(uri, mode: mode);
    }
    return false;
  }

  /// Launch a phone number
  static Future<bool> launchPhone(String phoneNumber) async {
    final uri = Uri.parse('tel:$phoneNumber');
    if (await launcher.canLaunchUrl(uri)) {
      return await launcher.launchUrl(uri);
    }
    return false;
  }

  /// Launch an email
  static Future<bool> launchEmail(String email, {
    String? subject,
    String? body,
  }) async {
    final uri = Uri.parse(
      'mailto:$email${subject != null ? '?subject=$subject' : ''}${body != null ? '&body=$body' : ''}',
    );
    if (await launcher.canLaunchUrl(uri)) {
      return await launcher.launchUrl(uri);
    }
    return false;
  }

  /// Launch SMS
  static Future<bool> launchSms(String phoneNumber, {String? body}) async {
    final uri = Uri.parse(
      'sms:$phoneNumber${body != null ? '?body=$body' : ''}',
    );
    if (await launcher.canLaunchUrl(uri)) {
      return await launcher.launchUrl(uri);
    }
    return false;
  }

  /// Check if URL can be launched
  static Future<bool> canLaunch(String url) async {
    final uri = Uri.parse(url);
    return await launcher.canLaunchUrl(uri);
  }
}
