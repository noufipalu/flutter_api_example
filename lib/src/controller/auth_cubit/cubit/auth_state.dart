part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();
}

class AuthStateInitial extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthStateLoading extends AuthState {
  @override
  List<Object?> get props => [];
}

class AuthStateAuthenticated extends AuthState {
  AuthStateAuthenticated();
  @override
  List<Object?> get props => [];
}

class AuthStateUnauthenticated extends AuthState {
  final String error;
  AuthStateUnauthenticated(this.error);
  @override
  List<Object?> get props => [error];
}
