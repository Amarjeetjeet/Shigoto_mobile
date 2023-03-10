import 'package:flutter/material.dart';

class BulletText extends StatelessWidget{
  final double size;
  const BulletText({super.key , this.size = 34});

  @override
  Widget build(BuildContext context) {
    return Text(
      " \u2022 ",
      style: TextStyle(fontSize: size),
    );
  }

}