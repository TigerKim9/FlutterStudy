import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,  //오른쪽 위 debug 배너 없애기
      home: HomeScreen()));
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //핫 리로드는 build 함수가 있는 것만 다시 렌더한다.
    return Scaffold(
      backgroundColor: Color(0xFFF99231),//hex Code로 정확한 색상을 넣어보자
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,  //Column의 default는 맨 위 정렬이므로 센터 정렬 해줌.
        children: [
          Image.asset(
              "asset/img/logo.png"
          ),
        ],
      ),
    );
  }
}
