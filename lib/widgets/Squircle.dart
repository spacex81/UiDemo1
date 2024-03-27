import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:ui/utils/MemojiColors.dart';

class Squircle extends StatelessWidget {
  const Squircle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random.secure();
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
          color:
              MemojiColors.values[random.nextInt(MemojiColors.values.length)],
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
              image: AssetImage(
            "assets/images/${random.nextInt(12) + 1}.png",
          ))),
    );
  }
}
