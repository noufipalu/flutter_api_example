import 'package:datainflutter/src/core/network/api_helper.dart';
import 'package:datainflutter/src/core/network/api_response.dart';

class ContactRepository {
  Future<ApiResponse> getAllContacts() async {
    ApiResponse response = await ApiHelper().makeGetRequest("contact");
    return response;
  }

  Future<ApiResponse> createNewContact() async {
    ApiResponse response = await ApiHelper().makePostRequest(
      "contact",
    );
    return response;
  }
}
