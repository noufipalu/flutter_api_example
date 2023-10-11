import 'package:datainflutter/src/controller/auth_cubit/cubit/auth_repository.dart';
import 'package:datainflutter/src/core/network/api_response.dart';
import 'package:datainflutter/src/core/storage/storage_helper.dart';
import 'package:datainflutter/src/core/storage/storage_keys.dart';
import 'package:datainflutter/src/model/data/user_request_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthStateInitial());

  Future<void> login(String email, String password) async {
    emit(AuthStateLoading());

    AuthRepository authRepository = AuthRepository();

    try {
      ApiResponse apiResponse = await authRepository.login(email, password);
      if (apiResponse.status) {
        await StorageHelper()
            .writeData(StorageKeys.userToken, apiResponse.token!);
        await StorageHelper()
            .writeData(StorageKeys.userId, apiResponse.data["_id"]);
        emit(AuthStateAuthenticated());
      } else {
        emit(AuthStateUnauthenticated('Inavlid Credentials'));
      }
    } catch (e) {
      emit(AuthStateUnauthenticated('Authentication Error'));
    }
  }

  Future<void> signUp(UserRequestModel userRequestModel) async {
    emit(AuthStateLoading());
    AuthRepository authRepository = AuthRepository();
    try {
      ApiResponse response = await authRepository.signup(userRequestModel);
      if (response.status) {
        StorageHelper().writeData(StorageKeys.userToken, response.token!);
        StorageHelper().writeData(StorageKeys.userId, response.data["_id"]);
        emit(AuthStateAuthenticated());
      } else {
        emit(AuthStateUnauthenticated(response.error!));
      }
    } catch (e) {
      emit(AuthStateUnauthenticated("An error occured"));
    }
  }
}
