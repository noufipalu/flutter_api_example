import 'package:datainflutter/src/controller/records_cubit/cubit/records_cubit.dart';
import 'package:datainflutter/src/views/widgets/contact_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => RecordsCubit()..getRecordsData(),
        child: SafeArea(
          child: BlocBuilder<RecordsCubit, RecordsState>(
            builder: (context, state) {
              if (state is RecordsLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is RecordsSuccess) {
                return ListView.builder(
                  itemCount: state.records.length,
                  itemBuilder: (subcontext, index) {
                    return ContactListItemWidget(
                        recordsModel: state.records[index]);
                  },
                );
              } else if (state is RecordsError) {
                return const Text('Oops!... Something went wrong');
              } else {
                return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
