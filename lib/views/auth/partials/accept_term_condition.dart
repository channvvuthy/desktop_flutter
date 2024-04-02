// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:esc_desktop_application/components/ui/mouse_pointer.dart';
import 'package:esc_desktop_application/components/ui/rounded_container.dart';
import 'package:esc_desktop_application/utils/label_style.dart';
import 'package:flutter/material.dart';

class AcceptTermCondition extends StatelessWidget {
  const AcceptTermCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MousePointer(child: RoundedContainer(), onTap: () {}),
          SizedBox(
            width: 5,
          ),
          Text(
            'Please accept with',
            style: LabelStyle.secondary,
          ),
          SizedBox(
            width: 5,
          ),
          MousePointer(
              child: Text(
                'Term & Condition',
                style: LabelStyle.primary,
              ),
              onTap: () {})
        ]);
  }
}
