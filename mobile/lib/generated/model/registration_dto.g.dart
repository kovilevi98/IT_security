// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'registration_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegistrationDto extends RegistrationDto {
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String email;
  @override
  final String password;
  @override
  final String passwordAgain;

  factory _$RegistrationDto([void Function(RegistrationDtoBuilder) updates]) =>
      (new RegistrationDtoBuilder()..update(updates)).build();

  _$RegistrationDto._(
      {this.lastName,
      this.firstName,
      this.email,
      this.password,
      this.passwordAgain})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'RegistrationDto', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'RegistrationDto', 'firstName');
    BuiltValueNullFieldError.checkNotNull(email, 'RegistrationDto', 'email');
    BuiltValueNullFieldError.checkNotNull(
        password, 'RegistrationDto', 'password');
    BuiltValueNullFieldError.checkNotNull(
        passwordAgain, 'RegistrationDto', 'passwordAgain');
  }

  @override
  RegistrationDto rebuild(void Function(RegistrationDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegistrationDtoBuilder toBuilder() =>
      new RegistrationDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegistrationDto &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        email == other.email &&
        password == other.password &&
        passwordAgain == other.passwordAgain;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, lastName.hashCode), firstName.hashCode),
                email.hashCode),
            password.hashCode),
        passwordAgain.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegistrationDto')
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('email', email)
          ..add('password', password)
          ..add('passwordAgain', passwordAgain))
        .toString();
  }
}

class RegistrationDtoBuilder
    implements Builder<RegistrationDto, RegistrationDtoBuilder> {
  _$RegistrationDto _$v;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _passwordAgain;
  String get passwordAgain => _$this._passwordAgain;
  set passwordAgain(String passwordAgain) =>
      _$this._passwordAgain = passwordAgain;

  RegistrationDtoBuilder() {
    RegistrationDto._initializeBuilder(this);
  }

  RegistrationDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _email = $v.email;
      _password = $v.password;
      _passwordAgain = $v.passwordAgain;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegistrationDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegistrationDto;
  }

  @override
  void update(void Function(RegistrationDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegistrationDto build() {
    final _$result = _$v ??
        new _$RegistrationDto._(
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'RegistrationDto', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'RegistrationDto', 'firstName'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'RegistrationDto', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'RegistrationDto', 'password'),
            passwordAgain: BuiltValueNullFieldError.checkNotNull(
                passwordAgain, 'RegistrationDto', 'passwordAgain'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
