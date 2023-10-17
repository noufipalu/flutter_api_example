import 'package:datainflutter/src/controller/contact_cubit/cubit/contact_cubit.dart';
import 'package:datainflutter/src/core/common_widgets/app_button.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/model/contact/contact_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewContactPage extends StatefulWidget {
  const NewContactPage({super.key});

  @override
  State<NewContactPage> createState() => _NewContactPageState();
}

class _NewContactPageState extends State<NewContactPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactCubit()..readContact(),
      child: Scaffold(
        body: SafeArea(
          child: BlocConsumer<ContactCubit, ContactState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              if (state is ContactReadStateLoading) {
                return const CircularProgressIndicator();
              }
              if (state is ContactReadStateError) {
                return Column(
                  children: [
                    const Text(Strings.contactError),
                    Text(state.error),
                    AppButton(
                      buttonTitle: Strings.retry,
                      onPressed: () {
                        context.read<ContactCubit>().readContact();
                      },
                    ),
                  ],
                );
              }
              if (state is ContactReadStateSuccess) {
                List<ContactModel> contacts = state.data;
                return ListView.builder(
                  itemCount: contacts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(contacts[index].firstName),
                      subtitle: Text(contacts[index].email),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.delete),
                      ),
                    );
                  },
                );
              }
              return const SizedBox();
            },
          ),
        ),
      ),
    );
  }
}
