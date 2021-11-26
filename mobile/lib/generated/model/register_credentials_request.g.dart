// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'register_credentials_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RegisterCredentialsRequest extends RegisterCredentialsRequest {
  @override
  final String email;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String password;
  @override
  final String phoneNumber;
  @override
  final bool newsletter;

  factory _$RegisterCredentialsRequest(
          [void Function(RegisterCredentialsRequestBuilder) updates]) =>
      (new RegisterCredentialsRequestBuilder()..update(updates)).build();

  _$RegisterCredentialsRequest._(
      {this.email,
      this.firstName,
      this.lastName,
      this.password,
      this.phoneNumber,
      this.newsletter})
      : super._();

  @override
  RegisterCredentialsRequest rebuild(
          void Function(RegisterCredentialsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RegisterCredentialsRequestBuilder toBuilder() =>
      new RegisterCredentialsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RegisterCredentialsRequest &&
        email == other.email &&
        firstName == other.firstName &&
        lastName == other.lastName &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        newsletter == other.newsletter;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, email.hashCode), firstName.hashCode),
                    lastName.hashCode),
                password.hashCode),
            phoneNumber.hashCode),
        newsletter.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RegisterCredentialsRequest')
          ..add('email', email)
          ..add('firstName', firstName)
          ..add('lastName', lastName)
          ..add('password', password)
          ..add('phoneNumber', phoneNumber)
          ..add('newsletter', newsletter))
        .toString();
  }
}

class RegisterCredentialsRequestBuilder
    implements
        Builder<RegisterCredentialsRequest, RegisterCredentialsRequestBuilder> {
  _$RegisterCredentialsRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  bool _newsletter;
  bool get newsletter => _$this._newsletter;
  set newsletter(bool newsletter) => _$this._newsletter = newsletter;

  RegisterCredentialsRequestBuilder() {
    RegisterCredentialsRequest._initializeBuilder(this);
  }

  RegisterCredentialsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _firstName = $v.firstName;
      _lastName = $v.lastName;
      _password = $v.password;
      _phoneNumber = $v.phoneNumber;
      _newsletter = $v.newsletter;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RegisterCredentialsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RegisterCredentialsRequest;
  }

  @override
  void update(void Function(RegisterCredentialsRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RegisterCredentialsRequest build() {
    final _$result = _$v ??
        new _$RegisterCredentialsRequest._(
            email: email,
            firstName: firstName,
            lastName: lastName,
            password: password,
            phoneNumber: phoneNumber,
            newsletter: newsletter);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
