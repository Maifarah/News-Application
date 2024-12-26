import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({super.key, required this.link});
  final String link;

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  late InAppWebViewController inAppWebViewController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: InAppWebView(
      initialUrlRequest: URLRequest(
        url: WebUri.uri(Uri.parse(widget.link)),
      ),
      onWebViewCreated: (InAppWebViewController controller) {
        inAppWebViewController = controller;
      },
    )

        // child: Text('WebView'),

        );
  }
}
