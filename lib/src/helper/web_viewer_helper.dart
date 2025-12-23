import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

/// Helper class for WebView rendering
class WebViewerHelper {
  /// Create an InAppWebView widget
  static Widget createInAppWebView({
    required String url,
    InAppWebViewSettings? initialSettings,
    void Function(InAppWebViewController, WebUri?)? onLoadStart,
    void Function(InAppWebViewController, WebUri?)? onLoadStop,
    void Function(InAppWebViewController, WebResourceRequest, WebResourceError)? onReceivedError,
  }) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(url)),
      initialSettings: initialSettings ?? InAppWebViewSettings(),
      onLoadStart: onLoadStart,
      onLoadStop: onLoadStop,
      onReceivedError: onReceivedError,
    );
  }

  /// Create a simple WebView widget
  static Widget createSimpleWebView(String url) {
    return InAppWebView(
      initialUrlRequest: URLRequest(url: WebUri(url)),
      initialSettings: InAppWebViewSettings(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
    );
  }
}
