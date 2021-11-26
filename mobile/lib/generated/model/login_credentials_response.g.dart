// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'login_credentials_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginCredentialsResponse extends LoginCredentialsResponse {
  @override
  final String bearerToken;
  @override
  final String userToken;
  @override
  final int userPoints;
  @override
  final BuiltList<EventHiddenResponse> recommendedEvents;

  factory _$LoginCredentialsResponse(
          [void Function(LoginCredentialsResponseBuilder) updates]) =>
      (new LoginCredentialsResponseBuilder()..update(updates)).build();

  _$LoginCredentialsResponse._(
      {this.bearerToken,
      this.userToken,
      this.userPoints,
      this.recommendedEvents})
      : super._();

  @override
  LoginCredentialsResponse rebuild(
          void Function(LoginCredentialsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginCredentialsResponseBuilder toBuilder() =>
      new LoginCredentialsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginCredentialsResponse &&
        bearerToken == other.bearerToken &&
        userToken == other.userToken &&
        userPoints == other.userPoints &&
        recommendedEvents == other.recommendedEvents;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, bearerToken.hashCode), userToken.hashCode),
            userPoints.hashCode),
        recommendedEvents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginCredentialsResponse')
          ..add('bearerToken', bearerToken)
          ..add('userToken', userToken)
          ..add('userPoints', userPoints)
          ..add('recommendedEvents', recommendedEvents))
        .toString();
  }
}

class LoginCredentialsResponseBuilder
    implements
        Builder<LoginCredentialsResponse, LoginCredentialsResponseBuilder> {
  _$LoginCredentialsResponse _$v;

  String _bearerToken;
  String get bearerToken => _$this._bearerToken;
  set bearerToken(String bearerToken) => _$this._bearerToken = bearerToken;

  String _userToken;
  String get userToken => _$this._userToken;
  set userToken(String userToken) => _$this._userToken = userToken;

  int _userPoints;
  int get userPoints => _$this._userPoints;
  set userPoints(int userPoints) => _$this._userPoints = userPoints;

  ListBuilder<EventHiddenResponse> _recommendedEvents;
  ListBuilder<EventHiddenResponse> get recommendedEvents =>
      _$this._recommendedEvents ??= new ListBuilder<EventHiddenResponse>();
  set recommendedEvents(ListBuilder<EventHiddenResponse> recommendedEvents) =>
      _$this._recommendedEvents = recommendedEvents;

  LoginCredentialsResponseBuilder() {
    LoginCredentialsResponse._initializeBuilder(this);
  }

  LoginCredentialsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bearerToken = $v.bearerToken;
      _userToken = $v.userToken;
      _userPoints = $v.userPoints;
      _recommendedEvents = $v.recommendedEvents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginCredentialsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginCredentialsResponse;
  }

  @override
  void update(void Function(LoginCredentialsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginCredentialsResponse build() {
    _$LoginCredentialsResponse _$result;
    try {
      _$result = _$v ??
          new _$LoginCredentialsResponse._(
              bearerToken: bearerToken,
              userToken: userToken,
              userPoints: userPoints,
              recommendedEvents: _recommendedEvents?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recommendedEvents';
        _recommendedEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginCredentialsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
