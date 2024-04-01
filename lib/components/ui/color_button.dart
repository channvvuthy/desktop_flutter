// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double borderRadius;
  final double height;

  const ColorButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.backgroundColor = ThemeColor.primaryColor,
    this.borderRadius = 4.0,
    this.height = 40.0,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          width: double.infinity,
          height: height,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: backgroundColor,
          ),
          child: Text(
            title,
            style: TextStyle(
              color: textColor, // Adjust text color as needed
            ),
          ),
        ),
      ),
    );
  }
}
