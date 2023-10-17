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
  final String error;
  const ContactCreateStateError({required this.error});
  @override
  List<Object?> get props => [error];
}

class ContactReadStateLoading extends ContactState {
  @override
  List<Object?> get props => [];
}

class ContactReadStateSuccess extends ContactState {
  final List<ContactModel> data;
  const ContactReadStateSuccess({required this.data});
  @override
  List<Object?> get props => [data];
}

class ContactReadStateError extends ContactState {
  final String error;
  const ContactReadStateError({required this.error});
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
  final String error;
  const ContactUpdateStateError({required this.error});
  @override
  List<Object?> get props => [error];
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
  const ContactDeleteStateError({required this.error});
  @override
  List<Object?> get props => [error];
}
