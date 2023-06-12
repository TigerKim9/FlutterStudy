import 'package:flutter/material.dart';

class ShoppingPage extends StatelessWidget {
  const ShoppingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon: Icon(Icons.back_hand),
          iconSize: 150,
        ),
      ),
    );
  }
}
