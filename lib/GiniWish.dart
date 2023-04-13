import 'package:flutter/material.dart';

class GiniWish extends StatelessWidget {
  const GiniWish({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 130,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/lamp.png"), fit: BoxFit.fill),
      ),
    );
  }
}
