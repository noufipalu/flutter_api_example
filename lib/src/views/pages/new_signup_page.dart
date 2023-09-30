import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/common_widgets/app_text_form_field.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:datainflutter/src/core/theme/app_text_theme.dart';
import 'package:flutter/material.dart';

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
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Register", style: AppTextTheme.h3TextStyle),
      ),
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              AppTextFormField(
                  label: Strings.name,
                  textEditingController: _nameController,
                  validator: ValidationHelpers.validateName),
              AppTextFormField(
                  label: Strings.email,
                  keyboardType: TextInputType.emailAddress,
                  textEditingController: _emailController,
                  validator: ValidationHelpers.validateEmail),
              AppTextFormField(
                label: Strings.dob,
                validator: ValidationHelpers.checkIsNullOrEmpty,
                onTap: () async {
                  DateTime? selectedDate = await showDatePicker(
                      context: context,
                      firstDate: DateTime(1950),
                      initialDate: DateTime.now()
                          .subtract(const Duration(days: 365 * 18)),
                      lastDate: DateTime.now()
                          .subtract(const Duration(days: 365 * 5)));
                  if (selectedDate == null) {
                    selectedDate =
                        DateTime.now().subtract(const Duration(days: 365 * 18));
                  }
                  _dobController.text =
                      selectedDate.toString().substring(0, 10);
                },
                keyboardType: TextInputType.datetime,
                textEditingController: _dobController,
              ),
              AppTextFormField(
                label: Strings.phone,
                keyboardType: TextInputType.phone,
                validator: ValidationHelpers.validatePhone,
                textEditingController: _phoneController,
              ),
              AppTextFormField(
                label: Strings.password,
                isObscure: true,
                validator: ValidationHelpers.validatePassword,
                textEditingController: _passwordController,
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
              AppButton(
                buttonTitle: Strings.signup,
                onPressed: () {
                  if (_formKey.currentState?.validate() ?? false) {
                    String email = _emailController.text.trim();
                    String name = _nameController.text.trim();
                    String password = _passwordController.text;
                    String phone = _phoneController.text.trim();
                    String dob = _dobController.text.trim();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
