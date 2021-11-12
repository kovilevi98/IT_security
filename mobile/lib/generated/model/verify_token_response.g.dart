// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'verify_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VerifyTokenResponse extends VerifyTokenResponse {
  @override
  final String token;
  @override
  final int validUntilInUnix;

  factory _$VerifyTokenResponse(
          [void Function(VerifyTokenResponseBuilder) updates]) =>
      (new VerifyTokenResponseBuilder()..update(updates)).build();

  _$VerifyTokenResponse._({this.token, this.validUntilInUnix}) : super._();

  @override
  VerifyTokenResponse rebuild(
          void Function(VerifyTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VerifyTokenResponseBuilder toBuilder() =>
      new VerifyTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VerifyTokenResponse &&
        token == other.token &&
        validUntilInUnix == other.validUntilInUnix;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, token.hashCode), validUntilInUnix.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VerifyTokenResponse')
          ..add('token', token)
          ..add('validUntilInUnix', validUntilInUnix))
        .toString();
  }
}

class VerifyTokenResponseBuilder
    implements Builder<VerifyTokenResponse, VerifyTokenResponseBuilder> {
  _$VerifyTokenResponse _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  int _validUntilInUnix;
  int get validUntilInUnix => _$this._validUntilInUnix;
  set validUntilInUnix(int validUntilInUnix) =>
      _$this._validUntilInUnix = validUntilInUnix;

  VerifyTokenResponseBuilder() {
    VerifyTokenResponse._initializeBuilder(this);
  }

  VerifyTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _validUntilInUnix = $v.validUntilInUnix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VerifyTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VerifyTokenResponse;
  }

  @override
  void update(void Function(VerifyTokenResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VerifyTokenResponse build() {
    final _$result = _$v ??
        new _$VerifyTokenResponse._(
            token: token, validUntilInUnix: validUntilInUnix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
