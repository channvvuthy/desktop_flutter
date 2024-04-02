// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  final double size;
  final Color? color;
  final Widget? child;
  const RoundedContainer({super.key, this.size = 20, this.color, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4),
      width: size,
      height: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(size / 2),
          color: color,
          border: Border.all(color: ThemeColor.lightGrey, width: 1)),
      child: child,
    );
  }
}
