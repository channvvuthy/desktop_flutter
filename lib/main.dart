// ignore_for_file: prefer_const_constructors

import 'package:esc_desktop_application/app.dart';
import 'package:esc_desktop_application/translation.dart';
import 'package:esc_desktop_application/utils/app_config.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'package:get/get.dart';

import 'routes/router_list.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await windowManager.ensureInitialized();
  windowManager.waitUntilReadyToShow().then((_) async {
    await windowManager.maximize();
    await windowManager.setTitle(AppConfig.appName.tr);
  });
  runApp(GetMaterialApp(
    title: 'Flutter Demo',
    initialRoute: '/register',
    translations: Translation(),
    fallbackLocale: Locale('km', 'KH'),
    locale: Locale('km', 'KH'),
    getPages: RouterList.pages,
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Inter',
    ),
    home: App(),
  ));
}
