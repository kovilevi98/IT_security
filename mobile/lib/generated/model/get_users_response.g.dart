// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'get_users_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetUsersResponse extends GetUsersResponse {
  @override
  final BuiltList<UserResponse> users;

  factory _$GetUsersResponse(
          [void Function(GetUsersResponseBuilder) updates]) =>
      (new GetUsersResponseBuilder()..update(updates)).build();

  _$GetUsersResponse._({this.users}) : super._();

  @override
  GetUsersResponse rebuild(void Function(GetUsersResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetUsersResponseBuilder toBuilder() =>
      new GetUsersResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetUsersResponse && users == other.users;
  }

  @override
  int get hashCode {
    return $jf($jc(0, users.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetUsersResponse')
          ..add('users', users))
        .toString();
  }
}

class GetUsersResponseBuilder
    implements Builder<GetUsersResponse, GetUsersResponseBuilder> {
  _$GetUsersResponse _$v;

  ListBuilder<UserResponse> _users;
  ListBuilder<UserResponse> get users =>
      _$this._users ??= new ListBuilder<UserResponse>();
  set users(ListBuilder<UserResponse> users) => _$this._users = users;

  GetUsersResponseBuilder() {
    GetUsersResponse._initializeBuilder(this);
  }

  GetUsersResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetUsersResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetUsersResponse;
  }

  @override
  void update(void Function(GetUsersResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetUsersResponse build() {
    _$GetUsersResponse _$result;
    try {
      _$result = _$v ?? new _$GetUsersResponse._(users: _users?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GetUsersResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
