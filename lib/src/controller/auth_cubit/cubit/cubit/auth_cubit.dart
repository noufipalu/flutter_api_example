import 'package:datainflutter/src/controller/auth_cubit/cubit/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthStateInitial());

  Future<void> login(String email, String password) async {
    emit(AuthStateLoading());

    AuthRepository authRepository = AuthRepository();

    try {
      if (await authRepository.authenticate(email, password)) {
        emit(AuthStateAuthenticated(email)); //success state
      } else {
        emit(AuthStateUnauthenticated('Inavlid Credentials'));
      }
    } catch (e) {
      emit(AuthStateUnauthenticated('Authentication Error'));
    }
  }
}
