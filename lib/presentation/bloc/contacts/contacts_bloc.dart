import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/subjects.dart';

part 'contacts_event.dart';
part 'contacts_state.dart';

class ContactsBloc extends Bloc<ContactsEvent, ContactsState> {
  ContactsBloc() : super(const ContactsState()) {
    on<OnSubmitPressed>(
        (event, emit) => _handleOnSubmitPressedEvent(event, emit));
  }

  final BehaviorSubject<File?> uploadedFile =
      BehaviorSubject<File?>.seeded(null);

  final TextEditingController nameTC = TextEditingController();
  final TextEditingController emailTC = TextEditingController();
  final TextEditingController messageTC = TextEditingController();

  Future<void> _handleOnSubmitPressedEvent(
    OnSubmitPressed event,
    Emitter<ContactsState> emit,
  ) async {}
}
