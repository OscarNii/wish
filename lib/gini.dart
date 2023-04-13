import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

import 'GiniWish.dart';

class MyGiniPage extends StatelessWidget {
  const MyGiniPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: Container(
              height: 330,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ginis.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FadeInLeftBig(child: GiniWish()),
                FadeInDown(child: GiniWish()),
                FadeInRight(child: GiniWish()),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
