import 'package:flutter/material.dart';

import '../constant/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: PRIMARY_COLOR,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "랜덤숫자 생성기",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.settings,
                          color: RED_COLOR,
                        ))
                  ],
                ),
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          123,
                          456,
                          789,
                        ].asMap().entries
                            .map((x) => Padding(
                              padding: EdgeInsets.only(bottom: x.key==2?0: 16.0),// 맨 밑 숫자는 패딩 넣지 않기
                              child: Row(
                              children: x.value.toString().split('').map(
                                    (y) => Image.asset(
                                      'asset/img/$y.png',
                                      height: 70,
                                      width: 50,
                                    ),
                                  ).toList()
                        ),
                            ),
                        ).toList()
                    )
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: RED_COLOR, //활성화 되었을 시 색
                        ),
                        onPressed: () {},
                        child: Text('생성하기')))
              ],
            ),
          ),
        ));
  }
}
