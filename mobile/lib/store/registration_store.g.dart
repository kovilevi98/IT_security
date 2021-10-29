// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RegistrationStore on Registration, Store {
  final _$phoneAtom = Atom(name: 'Registration.phone');

  @override
  String get phone {
    _$phoneAtom.reportRead();
    return super.phone;
  }

  @override
  set phone(String value) {
    _$phoneAtom.reportWrite(value, super.phone, () {
      super.phone = value;
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

  final _$confirmAtom = Atom(name: 'Registration.confirm');

  @override
  bool get confirm {
    _$confirmAtom.reportRead();
    return super.confirm;
  }

  @override
  set confirm(bool value) {
    _$confirmAtom.reportWrite(value, super.confirm, () {
      super.confirm = value;
    });
  }

  final _$subscriptionAtom = Atom(name: 'Registration.subscription');

  @override
  bool get subscription {
    _$subscriptionAtom.reportRead();
    return super.subscription;
  }

  @override
  set subscription(bool value) {
    _$subscriptionAtom.reportWrite(value, super.subscription, () {
      super.subscription = value;
    });
  }

  @override
  String toString() {
    return '''
phone: ${phone},
email: ${email},
pass: ${pass},
isVisible: ${isVisible},
confirm: ${confirm},
subscription: ${subscription}
    ''';
  }
}
