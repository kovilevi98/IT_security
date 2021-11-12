// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'email_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EmailRequest extends EmailRequest {
  @override
  final String email;

  factory _$EmailRequest([void Function(EmailRequestBuilder) updates]) =>
      (new EmailRequestBuilder()..update(updates)).build();

  _$EmailRequest._({this.email}) : super._();

  @override
  EmailRequest rebuild(void Function(EmailRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EmailRequestBuilder toBuilder() => new EmailRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EmailRequest && email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(0, email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EmailRequest')..add('email', email))
        .toString();
  }
}

class EmailRequestBuilder
    implements Builder<EmailRequest, EmailRequestBuilder> {
  _$EmailRequest _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  EmailRequestBuilder() {
    EmailRequest._initializeBuilder(this);
  }

  EmailRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EmailRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EmailRequest;
  }

  @override
  void update(void Function(EmailRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EmailRequest build() {
    final _$result = _$v ?? new _$EmailRequest._(email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
