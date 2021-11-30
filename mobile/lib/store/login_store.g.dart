// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginStore on Login, Store {
  final _$emailAtom = Atom(name: 'Login.email');

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

  final _$passwordAtom = Atom(name: 'Login.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$isVisibleAtom = Atom(name: 'Login.isVisible');

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

  final _$isAdminAtom = Atom(name: 'Login.isAdmin');

  @override
  bool get isAdmin {
    _$isAdminAtom.reportRead();
    return super.isAdmin;
  }

  @override
  set isAdmin(bool value) {
    _$isAdminAtom.reportWrite(value, super.isAdmin, () {
      super.isAdmin = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('Login.login');

  @override
  Future<void> login(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context}) {
    return _$loginAsyncAction.run(() =>
        super.login(onSuccess: onSuccess, onError: onError, context: context));
  }

  final _$adminLoginAsyncAction = AsyncAction('Login.adminLogin');

  @override
  Future<void> adminLogin(
      {required void Function() onSuccess,
      required void Function(String) onError,
      required BuildContext context}) {
    return _$adminLoginAsyncAction.run(() => super
        .adminLogin(onSuccess: onSuccess, onError: onError, context: context));
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
isVisible: ${isVisible},
isAdmin: ${isAdmin}
    ''';
  }
}
