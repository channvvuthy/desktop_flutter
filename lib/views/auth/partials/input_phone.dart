import 'package:esc_desktop_application/components/ui/outline_input.dart';
import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:flutter/material.dart';

class InputPhone extends StatelessWidget {
  final Function(String) onChanged;
  const InputPhone({super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return OutlineInput(
        allowOnlyDigits: true,
        placeholder: Strings.phone,
        iconSize: 24,
        iconUrl: AssetUrl.phoneIcon,
        height: 50,
        onChanged: onChanged);
  }
}
