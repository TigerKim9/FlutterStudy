import 'package:flutter/material.dart';
import 'package:random_number_generator/constant/color.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double maxNumber = 10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: maxNumber.toInt()
                    .toString()
                    .split('')
                    .map((e) => Image.asset(
                          'asset/img/$e.png',
                          width: 50,
                          height: 70,
                        ))
                    .toList(),
              ),
            ),
            Slider(
                value: maxNumber,
                min: 10000,
                max: 1000000,
                onChanged: (double val) {
                  setState((){//값이 변하지만 슬라이드의 수치를 그리지 않기 때문에 setState로 계속 슬라이드를 그려내야한다.
                  maxNumber = val;

                  });
                }),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(primary: RED_COLOR),
                child: Text("저장"))
          ],
        ),
      ),
    );
  }
}
