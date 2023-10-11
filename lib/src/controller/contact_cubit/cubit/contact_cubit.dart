import 'package:bloc/bloc.dart';
import 'package:datainflutter/src/model/contact/contact_model.dart';
import 'package:equatable/equatable.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactStateInitial());

  createContact(ContactModel contactModel) {
    
  }
  readContact() {}
  updateContact(ContactModel contactModel) {}
  deleteContact(ContactModel contactModel) {}
}
