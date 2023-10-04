import 'package:datainflutter/src/model/records/records_model.dart';
import 'package:flutter/material.dart';

class ContactListItemWidget extends StatelessWidget {
  const ContactListItemWidget({super.key, required this.recordsModel});
  final RecordsModel recordsModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(recordsModel.photo, scale: 1.0),
      ),
      title: Text(recordsModel.name),
      subtitle: Text(recordsModel.address),
      trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.phone)),
    );
  }
}
