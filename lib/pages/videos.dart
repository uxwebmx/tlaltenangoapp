import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class VideosTube extends StatelessWidget {
  const VideosTube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Videos'),
      ),
      body: const WebView(
        initialUrl: "https://www.youtube.com/c/tlaltenangoenred",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
