import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WView2 extends StatefulWidget {
  @override
  _WViewState createState() => _WViewState();
}

class _WViewState extends State<WView2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: WebView(
        initialUrl: 'http://192.168.56.1:8052/web/index',
        javascriptMode: JavascriptMode.unrestricted,
        onPageFinished: (String url) {
      print('finished:' + url);
        },
        )
    );
  }
}
