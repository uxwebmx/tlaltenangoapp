import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebSite extends StatelessWidget {
  const WebSite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tlaltenangoenred.com'),
      ),
      body: const WebView(
        initialUrl: "https://www.tlaltenangoenred.com/",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
