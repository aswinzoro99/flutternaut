import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutternaut_frontend_webapp/enum/snackbar_type.dart';
import 'package:flutternaut_frontend_webapp/route/app_router.dart';
import 'package:flutternaut_frontend_webapp/utils/dialog_manager.dart';
import 'package:rxdart/subjects.dart';

import '../../../utils/locator.dart';

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
  ) async {
    final name = nameTC.text;
    final email = emailTC.text;
    final message = messageTC.text;
    final context = locate<AppRouter>().navigatorKey.currentContext!;

    if (name.isEmpty) {
      locate<DialogManager>().showSnackBar(
        context: context,
        message: 'Name cannot be empty',
        type: SnackbarType.error,
      );
    } else if (email.isEmpty) {
      locate<DialogManager>().showSnackBar(
        context: context,
        message: 'Email cannot be empty',
        type: SnackbarType.error,
      );
    } else if (message.isEmpty) {
      locate<DialogManager>().showSnackBar(
        context: context,
        message: 'Message cannot be empty',
        type: SnackbarType.error,
      );
    } else {}
  }
}
