part of 'contact_cubit.dart';

abstract class ContactState extends Equatable {
  const ContactState();
}

class ContactStateInitial extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactStateSuccess extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactStateError extends ContactState {
  final String error;
  ContactStateError(this.error);
  @override
  List<Object?> get props => [error];
}
