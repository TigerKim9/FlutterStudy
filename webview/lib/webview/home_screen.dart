import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  final homeUrl = "https://blog.codefactory.ai";
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text("codefactory"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){
            if(controller == null){
              return;
            }
            controller!.loadUrl(homeUrl);
          }, icon: Icon(
            Icons.home,
          ))
        ],
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller){ //웹뷰에서 위젯을 컨트롤 할 수 있는 함수.. 웹뷰가 만들어질때 작동함. 컨트롤러를 받아서 호출 된 곳에서 작동
          this.controller = controller;
        },
        initialUrl: homeUrl,
        javascriptMode: JavascriptMode.unrestricted,  //자바스크립트 실행시 필수
      ),
    );
  }
}
