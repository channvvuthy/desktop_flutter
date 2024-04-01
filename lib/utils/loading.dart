// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/components/ui/loading_overlay.dart';
import 'package:get/get.dart';

class Loading {
  static void showLoading() {
    Get.dialog(LoadingOverlay());
  }
}
