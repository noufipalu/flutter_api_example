import 'package:datainflutter/src/controller/auth_cubit/cubit/auth_cubit.dart';
import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController dobController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit()
          ..login(
            emailController.text.trim(),
            passwordController.text.trim(),
          ),
        child: SafeArea(
          child: Form(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: nameController,
                    validator: ValidationHelpers.validateName,
                    decoration: const InputDecoration(
                      label: Text(Strings.name),
                    ),
                  ),
                  TextFormField(
                    controller: dobController,
                    decoration: const InputDecoration(
                      label: Text(Strings.dob),
                    ),
                  ),
                  TextFormField(
                    controller: phoneController,
                    validator: ValidationHelpers.validatePhone,
                    decoration: const InputDecoration(
                      prefixText: '+91 ',
                      label: Text(Strings.phone),
                    ),
                  ),
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
                    height: 4,
                  ),
                  TextFormField(
                    controller: passwordController,
                    validator: (val) {
                      ValidationHelpers.validateConfirmPassword(
                          passwordController.text, val);
                    },
                    obscureText: true,
                    decoration: const InputDecoration(
                      label: Text(Strings.confrimPassword),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AppButton(
                    buttonTitle: Strings.signup,
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        String email = emailController.text;
                        String password = passwordController.text;
                        String name = nameController.text;
                        String dob = dobController.text;
                        String phone = phoneController.text;
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
