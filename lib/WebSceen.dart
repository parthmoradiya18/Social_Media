import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:social_media/WebProvider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebScreen extends StatefulWidget {
  const WebScreen({Key? key}) : super(key: key);

  @override
  State<WebScreen> createState() => _WebScreenState();
}

class _WebScreenState extends State<WebScreen> {
  WebProvider? True;
  WebProvider? False;

  @override
  Widget build(BuildContext context) {
    False = Provider.of<WebProvider>(context, listen: false);
    True = Provider.of<WebProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: False!.webViewController!),
      ),
    );
  }
}