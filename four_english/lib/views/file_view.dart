import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class FileView extends StatefulWidget {
  const FileView({required this.file, required this.title});
  final String file;
  final String title;
  @override
  State<StatefulWidget> createState() => _FileViewState();

}

class _FileViewState extends State<FileView> {
  late WebViewController _controller;
  // ignore: unused_field
  late InAppWebViewController _webViewController;
  _fetchData() async {
    String fileText = await rootBundle.loadString('assets/files/grammar.html');
    // _controller.loadUrl( Uri.dataFromString(
    //     fileText,
    //     mimeType: 'text/html',
    //     encoding: Encoding.getByName('utf-8')
    // ).toString());
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  } 

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text('Help')),
    //   body: WebViewWidget(
    //     initialUrl: 'about:blank',
    //     onWebViewCreated: (WebViewController webViewController) {
    //       _controller = webViewController;
    //       _fetchData();
    //     },
    //   ),
    // );
    return  Scaffold(
        appBar: AppBar(
          title: Text(widget.title , style: TextStyle(color: Colors.black)), backgroundColor: Colors.white,
        ),
        body: Container(
            child: Column(children: <Widget>[
              Expanded(
                child:InAppWebView(
                    initialFile: "assets/files/grammar.html",
                    // initialOptions: InAppWebViewGroupOptions(
                    //     crossPlatform: InAppWebViewOptions(
                    //       debuggingEnabled: true,
                    //     )
                    // ),
                    onWebViewCreated: (InAppWebViewController controller) {
                      _webViewController = controller;
                    },
                ),
              ),
            ])),
      );
  }
}