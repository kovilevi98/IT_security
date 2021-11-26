// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'sign_in_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SignInDto extends SignInDto {
  @override
  final String email;
  @override
  final String password;

  factory _$SignInDto([void Function(SignInDtoBuilder) updates]) =>
      (new SignInDtoBuilder()..update(updates)).build();

  _$SignInDto._({this.email, this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(email, 'SignInDto', 'email');
    BuiltValueNullFieldError.checkNotNull(password, 'SignInDto', 'password');
  }

  @override
  SignInDto rebuild(void Function(SignInDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SignInDtoBuilder toBuilder() => new SignInDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SignInDto &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SignInDto')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class SignInDtoBuilder implements Builder<SignInDto, SignInDtoBuilder> {
  _$SignInDto _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  SignInDtoBuilder() {
    SignInDto._initializeBuilder(this);
  }

  SignInDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SignInDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SignInDto;
  }

  @override
  void update(void Function(SignInDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SignInDto build() {
    final _$result = _$v ??
        new _$SignInDto._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'SignInDto', 'email'),
            password: BuiltValueNullFieldError.checkNotNull(
                password, 'SignInDto', 'password'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
