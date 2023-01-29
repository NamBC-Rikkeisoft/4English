import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class FileView extends StatefulWidget {
  const FileView({super.key, required this.file, required this.title});
  final String file;
  final String title;
  @override
  State<StatefulWidget> createState() => _FileViewState();

}

class _FileViewState extends State<FileView> {
  // late WebViewController _controller;
  // ignore: unused_field
  late InAppWebViewController _webViewController;
  _fetchData() async {
    // ignore: unused_local_variable
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
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ), 
          title: Text(widget.title , style: const TextStyle(color: Colors.black)), backgroundColor: Colors.white,
        ),
        body: Column(children: <Widget>[
          Expanded(
            child:InAppWebView(
                initialFile: widget.file,
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
        ]),
      );
  }
}