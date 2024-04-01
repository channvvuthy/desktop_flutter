// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:dio/dio.dart';
import 'package:esc_desktop_application/utils/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:ui' as ui; // For window

class ApiError {
  /// Handles the given error by printing an appropriate message based on its type.
  ///
  /// The [e] parameter represents the error to be handled. It can be of type [DioException]
  /// or any other type. If it is of type [DioException], the error message is printed.
  /// Otherwise, an "An unexpected error occurred" message is printed with the error details.
  static void handleError(dynamic e) {
    double screenWidth =
        ui.window.physicalSize.width / ui.window.devicePixelRatio;

    // Calculate left margin to keep Snackbar width at 300px and right margin at 10px
    double leftMargin = screenWidth - 310; // 300px width + 10px right margin

    Get.snackbar(
      'Error',
      e.toString().tr,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: ThemeColor.red,
      colorText: Colors.white,
      margin: EdgeInsets.only(left: leftMargin, bottom: 10, right: 10),
      borderRadius: 8,
      isDismissible: true,
      dismissDirection: DismissDirection.horizontal,
    );
  }
}
