import 'package:datainflutter/src/controller/auth_cubit/cubit/auth_cubit.dart';
import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/common_widgets/app_text_form_field.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:datainflutter/src/core/theme/app_text_theme.dart';
import 'package:datainflutter/src/model/data/user_request_model.dart';
import 'package:datainflutter/src/views/pages/login_page.dart';
import 'package:datainflutter/src/views/pages/new_contact_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewSignUpPage extends StatefulWidget {
  const NewSignUpPage({super.key});

  @override
  State<NewSignUpPage> createState() => _NewSignUpPageState();
}

class _NewSignUpPageState extends State<NewSignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Register", style: AppTextTheme.h3TextStyle),
        ),
        body: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AppTextFormField(
                    label: Strings.name,
                    textEditingController: _nameController,
                    validator: ValidationHelpers.validateName,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  AppTextFormField(
                    label: Strings.email,
                    keyboardType: TextInputType.emailAddress,
                    textEditingController: _emailController,
                    validator: ValidationHelpers.validateEmail,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  AppTextFormField(
                    label: Strings.dob,
                    validator: ValidationHelpers.checkIsNullOrEmpty,
                    onTap: () async {
                      DateTime? selectedDate = await showDatePicker(
                        context: context,
                        firstDate: DateTime(1950),
                        initialDate: DateTime.now().subtract(
                          const Duration(days: 365 * 18),
                        ),
                        lastDate: DateTime.now().subtract(
                          const Duration(days: 365 * 5),
                        ),
                      );
                      selectedDate ??= DateTime.now().subtract(
                        const Duration(days: 365 * 18),
                      );
                      _dobController.text =
                          selectedDate.toString().substring(0, 10);
                    },
                    keyboardType: TextInputType.datetime,
                    textEditingController: _dobController,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  AppTextFormField(
                    label: Strings.phone,
                    keyboardType: TextInputType.phone,
                    validator: ValidationHelpers.validatePhone,
                    textEditingController: _phoneController,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  AppTextFormField(
                    label: Strings.password,
                    isObscure: true,
                    validator: ValidationHelpers.validatePassword,
                    textEditingController: _passwordController,
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  AppTextFormField(
                    label: Strings.confrimPassword,
                    isObscure: true,
                    validator: (val) {
                      return ValidationHelpers.validateConfirmPassword(
                          _passwordController.text, val);
                    },
                    textEditingController: _confirmPasswordController,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocConsumer<AuthCubit, AuthState>(
                    listener: (context, state) {
                      if (state is AuthStateAuthenticated) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NewContactPage(),
                          ),
                        );
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
                    builder: (context, state) {
                      if (state is AuthStateLoading) {
                        return const CircularProgressIndicator();
                      }
                      return AppButton(
                        buttonTitle: Strings.signup,
                        onPressed: () {
                          if (_formKey.currentState?.validate() ?? false) {
                            String email = _emailController.text.trim();
                            String name = _nameController.text.trim();
                            String password = _passwordController.text;
                            String phone = _phoneController.text.trim();
                            String dob = _dobController.text.trim();
                            UserRequestModel userRequestModel =
                                UserRequestModel(
                              name: name,
                              email: email,
                              password: password,
                              dob: DateTime.parse(dob),
                              phone: phone,
                            );
                            context.read<AuthCubit>().signUp(userRequestModel);
                          }
                        },
                      );
                    },
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: Strings.user,
                            style: AppTextTheme.bodyTextStyle
                                .copyWith(color: Colors.black),
                          ),
                          TextSpan(
                            text: Strings.login,
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
