// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:esc_desktop_application/utils/label_style.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:esc_desktop_application/views/auth/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoNotHaveAccount extends StatelessWidget {
  const DoNotHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(Strings.dontHaveAccount, style: LabelStyle.secondary),
        SizedBox(
          width: 5,
        ),
        MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                Get.to(RegisterView());
              },
              child: Text(Strings.signUp, style: LabelStyle.primary),
            ))
      ],
    );
  }
}
