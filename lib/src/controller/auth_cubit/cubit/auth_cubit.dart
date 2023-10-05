import 'package:datainflutter/src/controller/auth_cubit/cubit/auth_repository.dart';
import 'package:datainflutter/src/core/network/api_response.dart';
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
        emit(AuthStateAuthenticated(email));
      } else {
        emit(AuthStateUnauthenticated('Inavlid Credentials'));
      }
    } catch (e) {
      emit(AuthStateUnauthenticated('Authentication Error'));
    }
  }
}
