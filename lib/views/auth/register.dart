// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last
import 'package:esc_desktop_application/components/ui/color_button.dart';
import 'package:esc_desktop_application/components/ui/danger_alert.dart';
import 'package:esc_desktop_application/controllers/auth/login_controller.dart';
import 'package:esc_desktop_application/utils/asset_url.dart';
import 'package:esc_desktop_application/utils/strings.dart';
import 'package:esc_desktop_application/views/auth/partials/do_not_have_account.dart';
import 'package:esc_desktop_application/views/auth/partials/genders.dart';
import 'package:esc_desktop_application/views/auth/partials/have_account_ready.dart';
import 'package:esc_desktop_application/views/auth/partials/input_password.dart';
import 'package:esc_desktop_application/views/auth/partials/input_phone.dart';
import 'package:esc_desktop_application/views/auth/partials/input_text.dart';
import 'package:esc_desktop_application/views/auth/partials/keep_me_logged.dart';
import 'package:esc_desktop_application/views/auth/partials/register_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

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
                          RegisterHeader(),
                          Row(
                            children: [
                              Expanded(
                                child: InputText(
                                    hintText: Strings.firstName,
                                    onChanged: (value) {
                                      loginCtl.setPhone(value);
                                    }),
                              ),
                              SizedBox(width: 20),
                              Expanded(
                                  child: InputText(
                                      hintText: Strings.lastName,
                                      onChanged: (value) {
                                        loginCtl.setPhone(value);
                                      })),
                            ],
                          ),
                          _buildSpacer(),
                          Genders(),
                          _buildSpacer(),
                          InputPhone(onChanged: (value) {}),
                          _buildSpacer(),
                          InputPassword(onChanged: (value) {
                            loginCtl.setPassword(value);
                          }),
                          _buildSpacer(),
                          InputPassword(
                              placeholder: Strings.confirmPassword,
                              onChanged: (value) {
                                loginCtl.setPassword(value);
                              }),
                          _buildSpacer(),
                          ColorButton(
                            height: 50,
                            title: Strings.register,
                            onPressed: () {
                              loginCtl.login();
                            },
                          ),
                          _buildSpacer(),
                          HaveAccountReady(),
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
