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
                    validator: ValidationHelpers.validateName)
              ],
            )),
      ),
    );
  }
}
