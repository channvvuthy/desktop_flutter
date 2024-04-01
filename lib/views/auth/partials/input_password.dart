import 'package:esc_desktop_application/components/ui/outline_input.dart';
import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:flutter/material.dart';

class InputPassword extends StatelessWidget {
  final Function(String) onChanged;
  final String placeholder;
  const InputPassword(
      {super.key,
      required this.onChanged,
      this.placeholder = Strings.password});

  @override
  Widget build(BuildContext context) {
    return OutlineInput(
        isSecure: true,
        placeholder: placeholder,
        iconSize: 24,
        iconUrl: AssetUrl.lockIcon,
        height: 50,
        onChanged: onChanged);
  }
}
