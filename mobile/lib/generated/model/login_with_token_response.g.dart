// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'login_with_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginWithTokenResponse extends LoginWithTokenResponse {
  @override
  final String bearerToken;
  @override
  final BuiltList<EventHiddenResponse> recommendedEvents;

  factory _$LoginWithTokenResponse(
          [void Function(LoginWithTokenResponseBuilder) updates]) =>
      (new LoginWithTokenResponseBuilder()..update(updates)).build();

  _$LoginWithTokenResponse._({this.bearerToken, this.recommendedEvents})
      : super._();

  @override
  LoginWithTokenResponse rebuild(
          void Function(LoginWithTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginWithTokenResponseBuilder toBuilder() =>
      new LoginWithTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginWithTokenResponse &&
        bearerToken == other.bearerToken &&
        recommendedEvents == other.recommendedEvents;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, bearerToken.hashCode), recommendedEvents.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginWithTokenResponse')
          ..add('bearerToken', bearerToken)
          ..add('recommendedEvents', recommendedEvents))
        .toString();
  }
}

class LoginWithTokenResponseBuilder
    implements Builder<LoginWithTokenResponse, LoginWithTokenResponseBuilder> {
  _$LoginWithTokenResponse _$v;

  String _bearerToken;
  String get bearerToken => _$this._bearerToken;
  set bearerToken(String bearerToken) => _$this._bearerToken = bearerToken;

  ListBuilder<EventHiddenResponse> _recommendedEvents;
  ListBuilder<EventHiddenResponse> get recommendedEvents =>
      _$this._recommendedEvents ??= new ListBuilder<EventHiddenResponse>();
  set recommendedEvents(ListBuilder<EventHiddenResponse> recommendedEvents) =>
      _$this._recommendedEvents = recommendedEvents;

  LoginWithTokenResponseBuilder() {
    LoginWithTokenResponse._initializeBuilder(this);
  }

  LoginWithTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bearerToken = $v.bearerToken;
      _recommendedEvents = $v.recommendedEvents?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginWithTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginWithTokenResponse;
  }

  @override
  void update(void Function(LoginWithTokenResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginWithTokenResponse build() {
    _$LoginWithTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$LoginWithTokenResponse._(
              bearerToken: bearerToken,
              recommendedEvents: _recommendedEvents?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'recommendedEvents';
        _recommendedEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginWithTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
