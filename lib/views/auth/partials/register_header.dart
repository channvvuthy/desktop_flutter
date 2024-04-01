// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:esc_desktop_application/utils/label_style.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:flutter/material.dart';

class RegisterHeader extends StatelessWidget {
  const RegisterHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          Strings.register,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 50,
          ),
        ),
        Text(
          'Create your account in a seconds',
          style: LabelStyle.secondary,
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
