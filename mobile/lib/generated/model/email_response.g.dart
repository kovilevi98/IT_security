// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'email_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailResponse extends EmailResponse {
  @override
  final String email;

  factory _$EmailResponse([void Function(EmailResponseBuilder) updates]) =>
      (new EmailResponseBuilder()..update(updates)).build();

  _$EmailResponse._({this.email}) : super._();

  @override
  EmailResponse rebuild(void Function(EmailResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailResponseBuilder toBuilder() => new EmailResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailResponse && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmailResponse')..add('email', email))
        .toString();
  }
}

class EmailResponseBuilder
    implements Builder<EmailResponse, EmailResponseBuilder> {
  _$EmailResponse _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  EmailResponseBuilder() {
    EmailResponse._initializeBuilder(this);
  }

  EmailResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailResponse;
  }

  @override
  void update(void Function(EmailResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmailResponse build() {
    final _$result = _$v ?? new _$EmailResponse._(email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
