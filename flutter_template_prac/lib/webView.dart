import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WView extends StatefulWidget {
  @override
  _WViewState createState() => _WViewState();
}

class _WViewState extends State<WView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
        initialUrl: 'https://naver.com',
        javascriptMode: JavascriptMode.unrestricted,
        onPageFinished: (String url) {
      print('finished:' + url);
        },
        )
    );
  }
}
