// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';

class LoadingOverlay extends StatelessWidget {
  const LoadingOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: ThemeColor.primaryColor,
      ),
    );
  }
}
