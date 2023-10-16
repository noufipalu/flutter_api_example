import 'package:datainflutter/src/controller/auth_cubit/cubit/auth_cubit.dart';
import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:datainflutter/src/core/theme/app_text_theme.dart';
import 'package:datainflutter/src/views/pages/new_signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
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
                  BlocListener<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthStateAuthenticated) {
                        // TODO: Implement the logic
                        return;
                      }
                      if (state is AuthStateUnauthenticated) {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text(Strings.error),
                            content: Text(state.error),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Ok'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    child: BlocBuilder<AuthCubit, AuthState>(
                      builder: (context, state) {
                        if (state is AuthStateLoading) {
                          return const CircularProgressIndicator();
                        }
                        return AppButton(
                          buttonTitle: Strings.login,
                          onPressed: () {
                            if (_formKey.currentState?.validate() ?? false) {
                              String email = emailController.text;
                              String password = passwordController.text;
                              context.read<AuthCubit>().login(email, password);
                            }
                          },
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const NewSignUpPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: Strings.newUser,
                            style: AppTextTheme.bodyTextStyle
                                .copyWith(color: Colors.black),
                          ),
                          TextSpan(
                            text: Strings.signup,
                            style: AppTextTheme.bodyTextStyle
                                .copyWith(color: Colors.deepPurpleAccent),
                          ),
                        ],
                      ),
                    ),
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
