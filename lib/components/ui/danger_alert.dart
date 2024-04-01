// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';

class DangerAlert extends StatelessWidget {
  final List<String> errors;

  DangerAlert({super.key, List<String>? errors}) : errors = errors ?? [];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: ThemeColor.red, borderRadius: BorderRadius.circular(8)),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: errors.length,
        itemBuilder: (context, index) {
          return Row(children: [
            Container(
              width: 12,
              height: 12,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: ThemeColor.white),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Text(
                errors[index],
                style: TextStyle(color: ThemeColor.white, fontSize: 16),
              ),
            )
          ]);
        },
      ),
    );
  }
}
