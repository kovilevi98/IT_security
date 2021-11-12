// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'user_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserIdRequest extends UserIdRequest {
  @override
  final String userId;

  factory _$UserIdRequest([void Function(UserIdRequestBuilder) updates]) =>
      (new UserIdRequestBuilder()..update(updates)).build();

  _$UserIdRequest._({this.userId}) : super._();

  @override
  UserIdRequest rebuild(void Function(UserIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserIdRequestBuilder toBuilder() => new UserIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserIdRequest && userId == other.userId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, userId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserIdRequest')..add('userId', userId))
        .toString();
  }
}

class UserIdRequestBuilder
    implements Builder<UserIdRequest, UserIdRequestBuilder> {
  _$UserIdRequest _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  UserIdRequestBuilder() {
    UserIdRequest._initializeBuilder(this);
  }

  UserIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserIdRequest;
  }

  @override
  void update(void Function(UserIdRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserIdRequest build() {
    final _$result = _$v ?? new _$UserIdRequest._(userId: userId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
