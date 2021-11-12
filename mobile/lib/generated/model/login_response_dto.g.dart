// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'login_response_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResponseDto extends LoginResponseDto {
  @override
  final String userId;
  @override
  final String token;
  @override
  final String refreshToken;
  @override
  final String userType;

  factory _$LoginResponseDto(
          [void Function(LoginResponseDtoBuilder) updates]) =>
      (new LoginResponseDtoBuilder()..update(updates)).build();

  _$LoginResponseDto._(
      {this.userId, this.token, this.refreshToken, this.userType})
      : super._();

  @override
  LoginResponseDto rebuild(void Function(LoginResponseDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseDtoBuilder toBuilder() =>
      new LoginResponseDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponseDto &&
        userId == other.userId &&
        token == other.token &&
        refreshToken == other.refreshToken &&
        userType == other.userType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), token.hashCode),
            refreshToken.hashCode),
        userType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponseDto')
          ..add('userId', userId)
          ..add('token', token)
          ..add('refreshToken', refreshToken)
          ..add('userType', userType))
        .toString();
  }
}

class LoginResponseDtoBuilder
    implements Builder<LoginResponseDto, LoginResponseDtoBuilder> {
  _$LoginResponseDto _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _refreshToken;
  String get refreshToken => _$this._refreshToken;
  set refreshToken(String refreshToken) => _$this._refreshToken = refreshToken;

  String _userType;
  String get userType => _$this._userType;
  set userType(String userType) => _$this._userType = userType;

  LoginResponseDtoBuilder() {
    LoginResponseDto._initializeBuilder(this);
  }

  LoginResponseDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _token = $v.token;
      _refreshToken = $v.refreshToken;
      _userType = $v.userType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponseDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginResponseDto;
  }

  @override
  void update(void Function(LoginResponseDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponseDto build() {
    final _$result = _$v ??
        new _$LoginResponseDto._(
            userId: userId,
            token: token,
            refreshToken: refreshToken,
            userType: userType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
