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
  @override
  List<Object?> get props => [];
}

class ContactReadStateError extends ContactState {
  @override
  List<Object?> get props => [];
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
  @override
  List<Object?> get props => [];
}
