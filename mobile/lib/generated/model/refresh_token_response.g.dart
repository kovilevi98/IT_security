// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'refresh_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$RefreshTokenResponse extends RefreshTokenResponse {
  @override
  final String bearerToken;

  factory _$RefreshTokenResponse(
          [void Function(RefreshTokenResponseBuilder) updates]) =>
      (new RefreshTokenResponseBuilder()..update(updates)).build();

  _$RefreshTokenResponse._({this.bearerToken}) : super._();

  @override
  RefreshTokenResponse rebuild(
          void Function(RefreshTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RefreshTokenResponseBuilder toBuilder() =>
      new RefreshTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RefreshTokenResponse && bearerToken == other.bearerToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, bearerToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RefreshTokenResponse')
          ..add('bearerToken', bearerToken))
        .toString();
  }
}

class RefreshTokenResponseBuilder
    implements Builder<RefreshTokenResponse, RefreshTokenResponseBuilder> {
  _$RefreshTokenResponse _$v;

  String _bearerToken;
  String get bearerToken => _$this._bearerToken;
  set bearerToken(String bearerToken) => _$this._bearerToken = bearerToken;

  RefreshTokenResponseBuilder() {
    RefreshTokenResponse._initializeBuilder(this);
  }

  RefreshTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _bearerToken = $v.bearerToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RefreshTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RefreshTokenResponse;
  }

  @override
  void update(void Function(RefreshTokenResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RefreshTokenResponse build() {
    final _$result =
        _$v ?? new _$RefreshTokenResponse._(bearerToken: bearerToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
