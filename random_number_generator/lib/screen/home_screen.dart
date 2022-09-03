import 'dart:math';

import 'package:flutter/material.dart';
import 'package:random_number_generator/screen/settings_screen.dart';

import '../constant/color.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int maxNumber = 1000;

  List<int> RandomNumber =[
    123,
    456,
    789,
  ];

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
                        onPressed: () async {
                         final result = await Navigator.of(context).push<int>(
                            MaterialPageRoute(builder: (BuildContext context){
                              return SettingsScreen();
                            }
                            )
                          );
                        },
                        icon: Icon(
                          Icons.settings,
                          color: RED_COLOR,
                        ))
                  ],
                ),
                Expanded(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                            RandomNumber.asMap().entries
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
                SizedBox(   //Container를 써도 되지만 SizedBox가 아주 조금 빠른 것과 모두 Container를 쓰면 코드를 구분할 때 어려우므로 개발자들의 약속으로 요소에는 SizedBox를 써주는 고러한 느낌.
                    width: double.infinity,   //화면 끝까지 버튼 길이 늘이기
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: RED_COLOR, //활성화 되었을 시 색
                        ),
                        onPressed: () {
                          final rand = Random();

                          final Set<int> newNumbers={};

                          while(newNumbers.length !=3){         //중복된 숫자를 피하고 싶을 때 Set 자료형과 while 문을 사용해주면 간단하게 처리 가능
                            final number = rand.nextInt(maxNumber);

                            newNumbers.add(number);

                            setState(() {
                              RandomNumber = newNumbers.toList();
                            });
                          }
                        },
                        child: Text('생성하기')))
              ],
            ),
          ),
        ));
  }
}
