import 'package:datainflutter/src/core/network/api_helper.dart';
import 'package:datainflutter/src/core/network/api_response.dart';
import 'package:datainflutter/src/model/data/user_request_model.dart';

class AuthRepository {
  Future<ApiResponse> login(String email, String password) async {
    ApiResponse response = await ApiHelper()
        .makePostRequest("user/login", {"email": email, "password": password});

    return response;
  }

  Future<ApiResponse> signup(UserRequestModel userRequestModel) async {
    ApiResponse response = await ApiHelper()
        .makePostRequest("user/signup", userRequestModel.toJson());
    return response;
  }
}
