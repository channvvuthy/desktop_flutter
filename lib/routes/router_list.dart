// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/views/auth/login.dart';
import 'package:esc_desktop_application/views/auth/register.dart';
import 'package:get/get.dart';

class RouterList {
  static final List<GetPage> pages = [
    GetPage(name: '/login', page: () => LoginView()),
    GetPage(name: '/register', page: () => RegisterView()),
  ];
}
