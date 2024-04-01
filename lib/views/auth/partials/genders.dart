// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:esc_desktop_application/controllers/gender_controller.dart';
import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Genders extends StatelessWidget {
  const Genders({super.key});

  @override
  Widget build(BuildContext context) {
    GenderController genderCtl = Get.put(GenderController());
    return Obx(() => Row(
          children: [
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  onTap: () => genderCtl.setGender(true),
                  child: _buildGender(
                      child: genderCtl.gender.value ? _buildActive() : null)),
            ),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                  onTap: () => genderCtl.setGender(false),
                  child: _buildGender(
                      child: !genderCtl.gender.value ? _buildActive() : null)),
            )
          ],
        ));
  }
}

Widget _buildActive({
  double width = 14,
  double height = 14,
}) {
  return Row(
    children: [
      Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(width / 2),
            color: ThemeColor.primaryColor),
      ),
    ],
  );
}

Widget _buildGender(
    {double width = 20,
    double height = 20,
    String title = 'Female',
    Color? color,
    Widget? child}) {
  return Row(
    children: [
      Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(2),
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: ThemeColor.lightGrey),
            borderRadius: BorderRadius.circular(width / 2),
            color: color),
        child: Center(
          child: child,
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Text(title),
      SizedBox(
        width: 20,
      ),
    ],
  );
}
