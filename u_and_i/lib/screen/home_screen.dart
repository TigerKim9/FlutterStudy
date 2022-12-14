import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  DateTime selectedDate = DateTime(
      DateTime.now().year,
      DateTime.now().month,
      DateTime.now().day
  );

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[100],
      body: SafeArea(
        bottom: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              _TopPart(selectedDate: selectedDate,),
              _BottomPart()
              
            ],
          ),
        ),
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  final VoidCallback
 _TopPart({required this.selectedDate, key? key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "U & I",
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'parisienne',
              fontSize: 80.0,
            ),
          ),
          Column(
            children: [
              Text(
                "우리 만난 날",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 40.0,
                ),
              ),
              Text(
                "${selectedDate.year}.${selectedDate.month}.${selectedDate.day}",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 30,
                ),
              ),
            ],
          ),

          IconButton(
              iconSize: 60,
              onPressed: () {
                showCupertinoDialog(context: context,
                    barrierDismissible: true,
                    builder: (BuildContext context){
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                        height: 300,
                      child: CupertinoDatePicker(
                        mode: CupertinoDatePickerMode.date,
                        initialDateTime: selectedDate,
                        maximumDate: DateTime(
                          DateTime.now().year,
                          DateTime.now().month,
                          DateTime.now().day
                        ),
                        onDateTimeChanged: (DateTime date){
                          setState(() {
                            selectedDate = date;
                          });
                        },
                      ),
                    ),
                  );
                });
              },
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
              )),
          Text("D+${
          DateTime(
            DateTime.now().year,
            DateTime.now().month,
            DateTime.now().day
          ).difference(selectedDate).inDays +1
          }",
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'sunflower',
                  fontSize: 30,
                  fontWeight: FontWeight.w700)),
        ],
      ),
    );
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(
          'asset/img/middle_image.png'
      ),
    ) ;
  }
}
