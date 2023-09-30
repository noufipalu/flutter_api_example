import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailController,
                  validator: ValidationHelpers.validateEmail,
                  decoration: const InputDecoration(
                    label: Text(Strings.email),
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                TextFormField(
                  controller: passwordController,
                  validator: ValidationHelpers.validatePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text(Strings.password),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                AppButton(
                  buttonTitle: Strings.login,
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      String email = emailController.text;
                      String password = passwordController.text;
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
