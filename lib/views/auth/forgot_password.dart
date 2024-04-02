// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:esc_desktop_application/components/ui/color_button.dart';
import 'package:esc_desktop_application/controllers/auth/login_controller.dart';
import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:esc_desktop_application/utils/label_style.dart';
import 'package:esc_desktop_application/views/auth/login.dart';
import 'package:esc_desktop_application/views/auth/partials/forgot_password_header.dart';
import 'package:esc_desktop_application/views/auth/partials/input_phone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordView extends StatelessWidget {
  const ForgotPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController loginCtl = Get.put(LoginController());
    return MaterialApp(
      home: Scaffold(
          body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AssetUrl.loginImageUrl),
              )),
            ),
          ),
          Expanded(
            child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ForgotPasswordHeader(),
                    InputPhone(onChanged: (value) {
                      print(value);
                    }),
                    _buildSpacer(),
                    ColorButton(title: "Verify Phone Number", onPressed: () {}),
                    _buildSpacer(),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () => Get.to(LoginView()),
                        child: Row(
                          children: [
                            Text("Get back to your ",
                                style: LabelStyle.secondary),
                            Text("Login", style: LabelStyle.primary)
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          )
        ],
      )),
    );
  }
}

Widget _buildSpacer() {
  return SizedBox(
    height: 30,
  );
}
