import 'package:bloc/bloc.dart';
import 'package:datainflutter/src/controller/contact_cubit/cubit/contact_repository.dart';
import 'package:datainflutter/src/core/constants/strings.dart';
import 'package:datainflutter/src/core/network/api_response.dart';
import 'package:datainflutter/src/model/contact/contact_model.dart';
import 'package:equatable/equatable.dart';

part 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactStateInitial());

  Future<void> createContact(ContactModel contactModel) async {
    emit(ContactCreateStateLoading());
    try {
      ContactRepository contactRepository = ContactRepository();
      ApiResponse response =
          await contactRepository.createNewContact(contactModel);
      if (response.status) {
        emit(ContactCreateStateSuccess());
      } else {
        emit(ContactCreateStateError(error: response.error!));
      }
    } catch (e) {
      emit(const ContactCreateStateError(error: "An error occured"));
    }
  }

  Future<void> readContact() async {
    emit(ContactReadStateLoading());
    try {
      ContactRepository contactRepository = ContactRepository();
      ApiResponse response = await contactRepository.getAllContacts();
      if (response.status) {
        List<dynamic> dataRaw = response.data;
        List<ContactModel> convertedData =
            dataRaw.map((e) => ContactModel.fromJson(e)).toList();
        emit(ContactReadStateSuccess(data: convertedData));
      } else {
        emit(ContactReadStateError(error: response.error!));
      }
    } catch (e) {
      emit(const ContactReadStateError(error: "An error occured"));
    }
  }

  Future<void> updateContact(ContactModel contactModel) async {
    emit(ContactUpdateStateLoading());
    try {
      ContactRepository contactRepository = ContactRepository();
      ApiResponse response =
          await contactRepository.updateContact(contactModel);
      if (response.status) {
        emit(ContactUpdateStateSuccess());
      } else {
        emit(const ContactUpdateStateError(error: Strings.error));
      }
    } catch (e) {
      emit(const ContactUpdateStateError(error: "An error occured"));
    }
  }

  Future<void> deleteContact(ContactModel contactModel) async {
    emit(ContactDeleteStateLoading());
    try {
      ContactRepository contactRepository = ContactRepository();
      ApiResponse response =
          await contactRepository.deleteContact(contactModel);
      if (response.status) {
        emit(ContactDeleteStateSuccess());
      } else {
        emit(ContactDeleteStateError(error: response.error!));
      }
    } catch (e) {
      emit(const ContactDeleteStateError(error: "An error occured"));
    }
  }
}
