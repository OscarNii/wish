import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'GiniWish.dart';

class MyGiniPage extends StatefulWidget {
  const MyGiniPage({super.key});

  @override
  State<MyGiniPage> createState() => _MyGiniPageState();
}

class _MyGiniPageState extends State<MyGiniPage> {
  bool isAnimating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Center(
            child: FadeInDownBig(
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
          ),
          const SizedBox(height: 40),
          const Text(
            "Abracadabra",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FadeInLeft(animate: isAnimating, child: const GiniWish()),
                FadeInDown(animate: isAnimating, child: const GiniWish()),
                FadeInRight(animate: isAnimating, child: const GiniWish()),
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              setState(() {
                isAnimating = !isAnimating;
              });
            },
            child: const Text(
              "Make a Wish",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.normal),
            ),
          )
        ],
      ),
    ));
  }
}
