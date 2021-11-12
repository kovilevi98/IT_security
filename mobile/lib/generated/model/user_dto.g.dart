// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDto extends UserDto {
  @override
  final String userId;
  @override
  final String lastName;
  @override
  final String firstName;
  @override
  final String email;

  factory _$UserDto([void Function(UserDtoBuilder) updates]) =>
      (new UserDtoBuilder()..update(updates)).build();

  _$UserDto._({this.userId, this.lastName, this.firstName, this.email})
      : super._();

  @override
  UserDto rebuild(void Function(UserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDtoBuilder toBuilder() => new UserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDto &&
        userId == other.userId &&
        lastName == other.lastName &&
        firstName == other.firstName &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, userId.hashCode), lastName.hashCode),
            firstName.hashCode),
        email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserDto')
          ..add('userId', userId)
          ..add('lastName', lastName)
          ..add('firstName', firstName)
          ..add('email', email))
        .toString();
  }
}

class UserDtoBuilder implements Builder<UserDto, UserDtoBuilder> {
  _$UserDto _$v;

  String _userId;
  String get userId => _$this._userId;
  set userId(String userId) => _$this._userId = userId;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  UserDtoBuilder() {
    UserDto._initializeBuilder(this);
  }

  UserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDto;
  }

  @override
  void update(void Function(UserDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDto build() {
    final _$result = _$v ??
        new _$UserDto._(
            userId: userId,
            lastName: lastName,
            firstName: firstName,
            email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
