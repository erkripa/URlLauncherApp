import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatefulWidget {
  const WebPage({Key? key, required this.data}) : super(key: key);

  final data;

  @override
  _WebPageState createState() => _WebPageState();
}

class _WebPageState extends State<WebPage> {
  @override
  void initState() {
    super.initState();

    if (Platform.isAndroid) WebView.platform == SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1 / 2,
        title: const Text('Webview'),
      ),
      body: WebView(
        initialUrl: widget.data['url'],
      ),
    );
  }
}
