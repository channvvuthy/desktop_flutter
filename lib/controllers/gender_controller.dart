import 'package:get/get.dart';

class GenderController extends GetxController {
  RxBool gender = true.obs;

  void setGender(bool newGender) {
    gender.value = newGender;
  }
}
