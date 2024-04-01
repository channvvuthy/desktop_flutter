// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/core/network/dio_client.dart';
import 'package:esc_desktop_application/utils/api_error.dart';
import 'package:esc_desktop_application/utils/path.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  RxString phone = ''.obs;
  RxString password = ''.obs;
  RxList errors = <String>[].obs;
  RxBool isRememberMe = true.obs;

  void login() async {
    errors.clear();
    if (phone.value == '') {
      errors.add('The phone number field is required');
    }
    if (password.value == '') {
      errors.add('The password field is required');
    }

    if (errors.isEmpty) {
      try {
        final response = await DioClient.instance.post(
          loginPath,
          data: {'phone': phone.value, 'password': password.value},
        );
        print(response);
      } catch (e) {
        ApiError.handleError(e);
      }
    }
  }

  void setPhone(String newPhone) {
    phone.value = newPhone;
  }

  void setPassword(String newPassword) {
    password.value = newPassword;
  }

  void setRememberMe() {
    isRememberMe.value = !isRememberMe.value;
    print(isRememberMe.value);
  }
}
