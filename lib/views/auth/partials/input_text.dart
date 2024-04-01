import 'package:esc_desktop_application/components/ui/outline_input.dart';
import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final Function(String) onChanged;
  final String hintText;
  const InputText({super.key, required this.onChanged, this.hintText = ''});

  @override
  Widget build(BuildContext context) {
    return OutlineInput(
        allowOnlyDigits: true,
        placeholder: hintText,
        iconSize: 24,
        iconUrl: AssetUrl.userIcon,
        height: 50,
        onChanged: onChanged);
  }
}
