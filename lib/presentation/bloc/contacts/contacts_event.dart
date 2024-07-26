part of 'contacts_bloc.dart';

sealed class ContactsEvent extends Equatable {
  const ContactsEvent();
}

class OnSubmitPressed extends ContactsEvent {
  @override
  List<Object?> get props => [];
}
