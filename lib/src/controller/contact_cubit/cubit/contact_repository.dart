import 'package:datainflutter/src/core/network/api_helper.dart';
import 'package:datainflutter/src/core/network/api_response.dart';
import 'package:datainflutter/src/model/contact/contact_model.dart';

class ContactRepository {
  Future<ApiResponse> getAllContacts() async {
    ApiResponse response = await ApiHelper().makeGetRequest("contact");
    return response;
  }

  Future<ApiResponse> createNewContact(ContactModel contactModel) async {
    ApiResponse response =
        await ApiHelper().makePostRequest("contact", contactModel.toJson());
    return response;
  }

  Future<ApiResponse> updateContact(ContactModel contactModel) async {
    ApiResponse response = await ApiHelper()
        .makePatchRequest("contact/${contactModel.id}", contactModel.toJson());
    return response;
  }

  Future<ApiResponse> deleteContact(ContactModel contactModel) async {
    ApiResponse response =
        await ApiHelper().makeDeleteRequest("contact/${contactModel.id}");
    return response;
  }
}
