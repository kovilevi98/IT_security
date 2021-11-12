// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'error_message_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ErrorMessageResponse extends ErrorMessageResponse {
  @override
  final String message;

  factory _$ErrorMessageResponse(
          [void Function(ErrorMessageResponseBuilder) updates]) =>
      (new ErrorMessageResponseBuilder()..update(updates)).build();

  _$ErrorMessageResponse._({this.message}) : super._();

  @override
  ErrorMessageResponse rebuild(
          void Function(ErrorMessageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ErrorMessageResponseBuilder toBuilder() =>
      new ErrorMessageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ErrorMessageResponse && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ErrorMessageResponse')
          ..add('message', message))
        .toString();
  }
}

class ErrorMessageResponseBuilder
    implements Builder<ErrorMessageResponse, ErrorMessageResponseBuilder> {
  _$ErrorMessageResponse _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ErrorMessageResponseBuilder() {
    ErrorMessageResponse._initializeBuilder(this);
  }

  ErrorMessageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ErrorMessageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ErrorMessageResponse;
  }

  @override
  void update(void Function(ErrorMessageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ErrorMessageResponse build() {
    final _$result = _$v ?? new _$ErrorMessageResponse._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
