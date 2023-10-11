part of 'contact_cubit.dart';

abstract class ContactState extends Equatable {
  const ContactState();
}

class ContactStateInitial extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactCreateStateLoading extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactCreateStateSuccess extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactCreateStateError extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactReadStateLoading extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactReadStateSuccess extends ContactState {
  final List<ContactModel> data;
  ContactReadStateSuccess({required this.data});
  @override
  List<Object?> get props => [data];
}

class ContactReadStateError extends ContactState {
  final String error;
  ContactReadStateError({required this.error});
  @override
  List<Object?> get props => [error];
}

class ContactUpdateStateLoading extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactUpdateStateSuccess extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactUpdateStateError extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactDeleteStateLoading extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactDeleteStateSuccess extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactDeleteStateError extends ContactState {
  final String error;
  ContactDeleteStateError({required this.error});
  @override
  List<Object?> get props => [error];
}
