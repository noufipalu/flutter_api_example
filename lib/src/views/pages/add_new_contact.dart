import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/common_widgets/app_text_form_field.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:flutter/material.dart';

class AddNewContactPage extends StatefulWidget {
  const AddNewContactPage({super.key});

  @override
  State<AddNewContactPage> createState() => _AddNewContactPageState();
}

class _AddNewContactPageState extends State<AddNewContactPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _fnameController = TextEditingController();
  final TextEditingController _lnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Strings.newcontact),
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
                  label: Strings.fname,
                  textEditingController: _fnameController,
                  validator: ValidationHelpers.validateName,
                ),
                const SizedBox(
                  height: 4,
                ),
                AppTextFormField(
                  label: Strings.lname,
                  textEditingController: _lnameController,
                  validator: ValidationHelpers.validateName,
                ),
                const SizedBox(
                  height: 4,
                ),
                AppTextFormField(
                  label: Strings.email,
                  textEditingController: _fnameController,
                  validator: ValidationHelpers.validateEmail,
                ),
                const SizedBox(
                  height: 4,
                ),
                AppTextFormField(
                  label: Strings.phone,
                  textEditingController: _phoneController,
                  validator: ValidationHelpers.validatePhone,
                ),
                const SizedBox(
                  height: 4,
                ),
                AppTextFormField(
                  label: Strings.address,
                  textEditingController: _addressController,
                ),
                const SizedBox(
                  height: 8,
                ),
                AppButton(
                  buttonTitle: Strings.save,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
