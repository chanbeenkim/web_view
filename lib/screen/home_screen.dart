import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUrl = Uri.parse('https://blog.codefactory.ai');

class HomeScreen extends StatelessWidget {
  WebViewController controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..loadRequest(homeUrl);


  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('CodeFactory'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // http:// - 요새는 드물다
              // https:// - 보안적으로 더 좋음
              controller.loadRequest(homeUrl);
            },
            icon: Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body: WebViewWidget(
    controller: controller,
    ),
      // WebView(
      //   onWebViewCreated: (WebViewController controller) {
      //     this.controller = controller;
      //   },
      //   initialUrl: homeUrl,
      //   javascriptMode: JavascriptMode.unrestricted,
      // ),
    );
  }
}
