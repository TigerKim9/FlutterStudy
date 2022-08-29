import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Timer? timer;

  PageController controller = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    super.initState();

    timer = Timer.periodic(Duration(seconds: 4), (timer) {
      int currentPage =
          controller.page!.toInt(); // page가 더블인 이유는 슬라이드 한순간한순간이 소수점이기 때문이다.
      int nextPage = currentPage + 1;

      if (nextPage > 4) {
        nextPage = 0;
      }

      controller.animateToPage(nextPage,
          duration: Duration(milliseconds: 1000),
          curve: Curves.ease);//curve는 애니메이션이 어떻게 움직일지 넣는 곳. 애펙의 beizer 등을 생각하면 됨.
    });
  }

  @override
  void dispose() {
    //생명주기의 마지막은 dispose
    controller.dispose();
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);//상태바의 표시정보 색
    return Scaffold(
      body: PageView(
        controller: controller,
        children: [1, 2, 3, 4, 5]
            .map(
              (e) =>
                  Image.asset("asset/img/image_${e}.jpeg", fit: BoxFit.cover),
            )
            .toList(),
      ),
    );
  }
}
