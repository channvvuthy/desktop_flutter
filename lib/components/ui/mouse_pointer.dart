import 'package:flutter/material.dart';

class MousePointer extends StatelessWidget {
  final Widget child;
  final VoidCallback onTap;
  const MousePointer({super.key, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(onTap: onTap, child: child),
    );
  }
}
