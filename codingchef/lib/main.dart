// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// ignore_for_file: prefer_const_constructors_in_immutables
import 'dart:io';
import 'package:codingchef/shoppingPage.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';

import 'SearchPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Charactor card",
      initialRoute: '/',
      routes: {
        '/' : (context) => Grade(),
        '/shopping' : (context) => ShoppingPage(),
        '/search' : (context) => SearchPage(),
      },
    );
  }
}

class Grade extends StatelessWidget {
  Grade({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[800],
        appBar: AppBar(
          title: Text("BBANTO"),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          elevation: 0,
          actions: [
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.pushNamed(context, '/shopping'
                );
                print("shopping cart clicked");
              },
            ),
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.pushNamed(context, '/search');
                print("search clicked");
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('asset/춘식-춘식이.gif'),
                  backgroundColor: Colors.amber,
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('asset/20578e5723e8a18.jpg'),
                  ),
                  // CircleAvatar(
                  //   backgroundColor: Colors.white,
                  //   backgroundImage: AssetImage('asset/20578e5723e8a18.jpg'),
                  // )
                ],
                accountName: Text('Skeleton'),
                accountEmail: Text('Skeleton@naver.com'),
                onDetailsPressed: () {
                  print('arrow is clicked');
                },
                decoration: BoxDecoration(
                    color: Colors.red[200],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
              ),
              ListTile(
                leading: Icon(
                  Icons.home,
                  color: Colors.grey[800],
                ),
                title: Text('Home'),
                onTap: () {
                  print('Home clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey[800],
                ),
                title: Text('Setting'),
                onTap: () {
                  print('Setting clicked');
                },
                trailing: Icon(Icons.add),
              ),
              ListTile(
                leading: Icon(
                  Icons.question_answer,
                  color: Colors.grey[800],
                ),
                title: Text('Q&A'),
                onTap: () {
                  print('QnA clicked');
                },
                trailing: Icon(Icons.add),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

                Center(
                  child: IconButton(onPressed: (){
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("d")));
                    print("object");
                  },
                    splashColor: Colors.transparent,    //클릭시 물결애니메이션 없애기 원리: 투명색으로 만듦.
                    highlightColor: Colors.transparent, //클릭시 물결애니메이션 없애기 원리: 투명색으로 만듦.
                      icon:CircleAvatar(
                        backgroundImage:
                      AssetImage('asset/create-animated-gif_3a-v2.gif'),
                        radius: 60,
                      ),
                    iconSize: 100,
                      ),
                )
                  // Center(
                  //   child: CircleAvatar(
                  //     backgroundImage:
                  //         AssetImage('asset/create-animated-gif_3a-v2.gif'),
                  //     radius: 60,
                  //   ),
                  // ),


              ,
              Divider(
                height: 60,
                color: Colors.grey[850],
                thickness: 0.5,
                endIndent: 30,
              ),
              Text(
                'NAME',
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'BBANTO',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'BBANTO POWER LEVEL',
                style: TextStyle(color: Colors.white, letterSpacing: 2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '14',
                style: TextStyle(
                    color: Colors.white,
                    letterSpacing: 2,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10),
                  Text(
                    'using lightsaber',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10),
                  Text(
                    'face hero tattoo',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  )
                ],
              ),
              Row(
                children: [
                  Icon(Icons.check_circle_outline),
                  SizedBox(width: 10),
                  Text(
                    'fire flames',
                    style: TextStyle(fontSize: 16, letterSpacing: 1),
                  )
                ],
              ),
              InkWell(
                child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('asset/20578e5723e8a18.jpg'),
                    radius: 40,
                    backgroundColor: Colors.amber[800],
                  ),
                ),
                onTap: (){
                  flutterToast();
                },
                splashColor: Colors.transparent,    //클릭시 물결애니메이션 없애기 원리: 투명색으로 만듦.
                highlightColor: Colors.transparent, //클릭시 물결애니메이션 없애기 원리: 투명색으로 만듦.
              )
            ],
          ),
        ));
  }
}
void flutterToast(){
  Fluttertoast.showToast(msg: 'msg',
  gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.redAccent,
    fontSize: 20,
    textColor: Colors.white,
    toastLength: Toast.LENGTH_SHORT
  );
}



//
// class Times extends StatefulWidget {
//   const Times({Key? key}) : super(key: key);
//
//   @override
//   State<Times> createState() => _TimesState();
// }
//
// class _TimesState extends State<Times> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }
