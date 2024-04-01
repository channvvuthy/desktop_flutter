// ignore_for_file: sort_child_properties_last, prefer_const_constructors, deprecated_member_use

import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:esc_desktop_application/utils/label_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class KeepMeLogged extends StatelessWidget {
  final bool isChecked;
  final VoidCallback onChecked;
  const KeepMeLogged(
      {super.key, this.isChecked = true, required this.onChecked});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Row(children: [
              MouseRegion(
                cursor: SystemMouseCursors.click,
                child: GestureDetector(
                  onTap: onChecked,
                  child: Container(
                      width: 30,
                      height: 30,
                      child: isChecked
                          ? SvgPicture.asset(
                              AssetUrl.checkIcon,
                              color: Colors.white,
                            )
                          : null,
                      decoration: BoxDecoration(
                        color: ThemeColor.primaryColor,
                        borderRadius: BorderRadius.circular(4),
                      )),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(Strings.keepMeLoggedIn, style: LabelStyle.secondary)
            ])),
        Expanded(
            child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.centerRight,
              child: Text(Strings.forgetPassword, style: LabelStyle.primary),
            ),
          ),
        ))
      ],
    );
  }
}
