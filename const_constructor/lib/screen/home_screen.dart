import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TestWidget(label: 'test1'), //const를 쓰면 빌드시 이미 그린 위젯을 기억해서 다시 실행하지 않는다. 리소스 관리 차원에서 사용하면 좋다.
            const TestWidget(label: 'test2'),
            ElevatedButton(onPressed: (){
              setState(() {

              });
            }, child: const Text(
              "빌드!"
            ))
          ],
        ),
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  final String label;

  const TestWidget({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print("$label 빌드 실행");
    return Container(
      child: Text(label),
    );
  }
}
