import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebProvider extends ChangeNotifier {
  WebViewController? webViewController;


  List name = [
    "Zee5",
    "MX Player",
     "Yupptv",
    "Tubi Tv"
  ];

  List Link = [
     "https://www.zee5.com/",
     "https://www.mxplayer.in/",
    "https://www.yupptv.com/",
    "https://www.tubitv.com/",
  ];

  void loadurl(int inde) {
    webViewController = WebViewController();
    webViewController!.loadRequest(
      Uri.parse("${Link[inde]}"),
    );
  }
}