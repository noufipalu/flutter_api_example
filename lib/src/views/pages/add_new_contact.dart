import 'package:datainflutter/src/controller/contact_cubit/cubit/contact_cubit.dart';
import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/common_widgets/app_text_form_field.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/helpers/validation_helpers.dart';
import 'package:datainflutter/src/model/contact/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
    return BlocProvider(
      create: (context) => ContactCubit(),
      child: Scaffold(
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
                    textEditingController: _emailController,
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
                  BlocConsumer<ContactCubit, ContactState>(
                    listener: (context, state) {
                      if (state is ContactCreateStateSuccess) {
                        Fluttertoast.showToast(
                            msg: Strings.contactCreationSuccess);
                        Navigator.pop(context);
                      } else if (state is ContactCreateStateError) {
                        Fluttertoast.showToast(msg: state.error);
                      }
                    },
                    builder: (context, state) {
                      if (state is ContactCreateStateLoading) {
                        return const CircularProgressIndicator();
                      }
                      return AppButton(
                        buttonTitle: Strings.save,
                        onPressed: () {
                          if (!(_formKey.currentState?.validate() ?? true)) {
                            return;
                          }
                          ContactModel contactModel = ContactModel(
                            firstName: _fnameController.text.trim(),
                            lastName: _lnameController.text.trim(),
                            address: _addressController.text.trim(),
                            phone: _phoneController.text.trim(),
                            email: _emailController.text.trim(),
                          );
                          context
                              .read<ContactCubit>()
                              .createContact(contactModel);
                        },
                      );
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
