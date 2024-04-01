// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:esc_desktop_application/components/ui/color_button.dart';
import 'package:esc_desktop_application/components/ui/danger_alert.dart';
import 'package:esc_desktop_application/controllers/auth/login_controller.dart';
import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:esc_desktop_application/views/auth/partials/do_not_have_account.dart';
import 'package:esc_desktop_application/views/auth/partials/input_password.dart';
import 'package:esc_desktop_application/views/auth/partials/input_phone.dart';
import 'package:esc_desktop_application/views/auth/partials/keep_me_logged.dart';
import 'package:esc_desktop_application/views/auth/partials/login_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
            child: Obx(() => SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          LoginHeader(),
                          InputPhone(onChanged: (value) {
                            loginCtl.setPhone(value);
                          }),
                          _buildSpacer(),
                          InputPassword(onChanged: (value) {
                            loginCtl.setPassword(value);
                          }),
                          _buildSpacer(),
                          KeepMeLogged(
                            isChecked: loginCtl.isRememberMe.value,
                            onChecked: loginCtl.setRememberMe,
                          ),
                          _buildSpacer(),
                          ColorButton(
                            height: 50,
                            title: Strings.login,
                            onPressed: () {
                              loginCtl.login();
                            },
                          ),
                          _buildSpacer(),
                          DoNotHaveAccount(),
                          _buildSpacer(),
                          Visibility(
                              visible: loginCtl.errors.isNotEmpty,
                              child: DangerAlert(
                                errors: loginCtl.errors
                                    .map((dynamic error) => error.toString())
                                    .toList(),
                              ))
                        ]),
                  ),
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
