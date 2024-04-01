// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:esc_desktop_application/routes/router_list.dart';
import 'package:esc_desktop_application/translation.dart';
import 'package:esc_desktop_application/views/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomeView(),
      ),
    );
  }
}
