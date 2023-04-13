import 'package:flutter/material.dart';

class MyGiniPage extends StatelessWidget {
  const MyGiniPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assetName"))
            ),
          )
        ],
      ),
    );
  }
}