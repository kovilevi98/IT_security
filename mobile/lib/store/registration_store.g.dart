// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrationStore on Registration, Store {
  final _$firstNameAtom = Atom(name: 'Registration.firstName');

  @override
  String get firstName {
    _$firstNameAtom.reportRead();
    return super.firstName;
  }

  @override
  set firstName(String value) {
    _$firstNameAtom.reportWrite(value, super.firstName, () {
      super.firstName = value;
    });
  }

  final _$lastNameAtom = Atom(name: 'Registration.lastName');

  @override
  String get lastName {
    _$lastNameAtom.reportRead();
    return super.lastName;
  }

  @override
  set lastName(String value) {
    _$lastNameAtom.reportWrite(value, super.lastName, () {
      super.lastName = value;
    });
  }

  final _$emailAtom = Atom(name: 'Registration.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passAtom = Atom(name: 'Registration.pass');

  @override
  String get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  final _$passConfirmAtom = Atom(name: 'Registration.passConfirm');

  @override
  String get passConfirm {
    _$passConfirmAtom.reportRead();
    return super.passConfirm;
  }

  @override
  set passConfirm(String value) {
    _$passConfirmAtom.reportWrite(value, super.passConfirm, () {
      super.passConfirm = value;
    });
  }

  final _$isVisibleAtom = Atom(name: 'Registration.isVisible');

  @override
  bool get isVisible {
    _$isVisibleAtom.reportRead();
    return super.isVisible;
  }

  @override
  set isVisible(bool value) {
    _$isVisibleAtom.reportWrite(value, super.isVisible, () {
      super.isVisible = value;
    });
  }

  final _$registrationAsyncAction = AsyncAction('Registration.registration');

  @override
  Future<void> registration(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context}) {
    return _$registrationAsyncAction.run(() => super.registration(
        onSuccess: onSuccess, onError: onError, context: context));
  }

  @override
  String toString() {
    return '''
firstName: ${firstName},
lastName: ${lastName},
email: ${email},
pass: ${pass},
passConfirm: ${passConfirm},
isVisible: ${isVisible}
    ''';
  }
}
