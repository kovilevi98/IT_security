// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'login_with_token_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginWithTokenRequest extends LoginWithTokenRequest {
  @override
  final String deviceId;
  @override
  final String userToken;

  factory _$LoginWithTokenRequest(
          [void Function(LoginWithTokenRequestBuilder) updates]) =>
      (new LoginWithTokenRequestBuilder()..update(updates)).build();

  _$LoginWithTokenRequest._({this.deviceId, this.userToken}) : super._();

  @override
  LoginWithTokenRequest rebuild(
          void Function(LoginWithTokenRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginWithTokenRequestBuilder toBuilder() =>
      new LoginWithTokenRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginWithTokenRequest &&
        deviceId == other.deviceId &&
        userToken == other.userToken;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, deviceId.hashCode), userToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginWithTokenRequest')
          ..add('deviceId', deviceId)
          ..add('userToken', userToken))
        .toString();
  }
}

class LoginWithTokenRequestBuilder
    implements Builder<LoginWithTokenRequest, LoginWithTokenRequestBuilder> {
  _$LoginWithTokenRequest _$v;

  String _deviceId;
  String get deviceId => _$this._deviceId;
  set deviceId(String deviceId) => _$this._deviceId = deviceId;

  String _userToken;
  String get userToken => _$this._userToken;
  set userToken(String userToken) => _$this._userToken = userToken;

  LoginWithTokenRequestBuilder() {
    LoginWithTokenRequest._initializeBuilder(this);
  }

  LoginWithTokenRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _deviceId = $v.deviceId;
      _userToken = $v.userToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginWithTokenRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginWithTokenRequest;
  }

  @override
  void update(void Function(LoginWithTokenRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginWithTokenRequest build() {
    final _$result = _$v ??
        new _$LoginWithTokenRequest._(deviceId: deviceId, userToken: userToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
