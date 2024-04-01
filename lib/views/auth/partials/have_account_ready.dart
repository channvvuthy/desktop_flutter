// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:esc_desktop_application/utils/label_style.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:esc_desktop_application/views/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HaveAccountReady extends StatelessWidget {
  const HaveAccountReady({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Strings.haveAccountReady,
          style: LabelStyle.secondary,
        ),
        SizedBox(
          width: 5,
        ),
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              Get.to(LoginView());
            },
            child: Text(
              Strings.login,
              style: LabelStyle.primary,
            ),
          ),
        )
      ],
    );
  }
}
