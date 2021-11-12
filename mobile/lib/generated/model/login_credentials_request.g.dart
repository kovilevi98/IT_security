// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'login_credentials_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginCredentialsRequest extends LoginCredentialsRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final String deviceId;
  @override
  final String deviceName;
  @override
  final bool rememberMe;

  factory _$LoginCredentialsRequest(
          [void Function(LoginCredentialsRequestBuilder) updates]) =>
      (new LoginCredentialsRequestBuilder()..update(updates)).build();

  _$LoginCredentialsRequest._(
      {this.email,
      this.password,
      this.deviceId,
      this.deviceName,
      this.rememberMe})
      : super._();

  @override
  LoginCredentialsRequest rebuild(
          void Function(LoginCredentialsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginCredentialsRequestBuilder toBuilder() =>
      new LoginCredentialsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginCredentialsRequest &&
        email == other.email &&
        password == other.password &&
        deviceId == other.deviceId &&
        deviceName == other.deviceName &&
        rememberMe == other.rememberMe;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, email.hashCode), password.hashCode),
                deviceId.hashCode),
            deviceName.hashCode),
        rememberMe.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginCredentialsRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('deviceId', deviceId)
          ..add('deviceName', deviceName)
          ..add('rememberMe', rememberMe))
        .toString();
  }
}

class LoginCredentialsRequestBuilder
    implements
        Builder<LoginCredentialsRequest, LoginCredentialsRequestBuilder> {
  _$LoginCredentialsRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  String _deviceId;
  String get deviceId => _$this._deviceId;
  set deviceId(String deviceId) => _$this._deviceId = deviceId;

  String _deviceName;
  String get deviceName => _$this._deviceName;
  set deviceName(String deviceName) => _$this._deviceName = deviceName;

  bool _rememberMe;
  bool get rememberMe => _$this._rememberMe;
  set rememberMe(bool rememberMe) => _$this._rememberMe = rememberMe;

  LoginCredentialsRequestBuilder() {
    LoginCredentialsRequest._initializeBuilder(this);
  }

  LoginCredentialsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _deviceId = $v.deviceId;
      _deviceName = $v.deviceName;
      _rememberMe = $v.rememberMe;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginCredentialsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginCredentialsRequest;
  }

  @override
  void update(void Function(LoginCredentialsRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginCredentialsRequest build() {
    final _$result = _$v ??
        new _$LoginCredentialsRequest._(
            email: email,
            password: password,
            deviceId: deviceId,
            deviceName: deviceName,
            rememberMe: rememberMe);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
