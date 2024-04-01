// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OutlineInput extends StatelessWidget {
  final double height;
  final Function(String) onChanged;
  final String iconUrl;
  final String placeholder;
  final Color borderColor;
  final double iconSize;
  final bool isSecure;
  final double borderRadius;
  final Color iConColor;
  final bool allowOnlyDigits;

  OutlineInput({
    super.key,
    this.height = 40.0,
    required this.onChanged,
    this.iconUrl = '',
    this.placeholder = '',
    this.borderColor = ThemeColor.borderInput,
    this.iconSize = 20,
    this.isSecure = false,
    this.borderRadius = 8.0,
    this.iConColor = ThemeColor.lightGrey,
    this.allowOnlyDigits = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            if (iconUrl.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: SvgPicture.asset(
                  iconUrl,
                  height: iconSize,
                  width: iconSize,
                  color: iConColor,
                ),
              ),
            Expanded(
              child: TextField(
                obscureText: isSecure,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                inputFormatters: allowOnlyDigits
                    ? <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ]
                    : null,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: placeholder,
                    hintStyle: TextStyle(color: iConColor)),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
