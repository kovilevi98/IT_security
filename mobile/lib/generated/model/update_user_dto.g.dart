// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'update_user_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateUserDto extends UpdateUserDto {
  @override
  final String lastName;
  @override
  final String firstName;

  factory _$UpdateUserDto([void Function(UpdateUserDtoBuilder) updates]) =>
      (new UpdateUserDtoBuilder()..update(updates)).build();

  _$UpdateUserDto._({this.lastName, this.firstName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        lastName, 'UpdateUserDto', 'lastName');
    BuiltValueNullFieldError.checkNotNull(
        firstName, 'UpdateUserDto', 'firstName');
  }

  @override
  UpdateUserDto rebuild(void Function(UpdateUserDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateUserDtoBuilder toBuilder() => new UpdateUserDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateUserDto &&
        lastName == other.lastName &&
        firstName == other.firstName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, lastName.hashCode), firstName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateUserDto')
          ..add('lastName', lastName)
          ..add('firstName', firstName))
        .toString();
  }
}

class UpdateUserDtoBuilder
    implements Builder<UpdateUserDto, UpdateUserDtoBuilder> {
  _$UpdateUserDto _$v;

  String _lastName;
  String get lastName => _$this._lastName;
  set lastName(String lastName) => _$this._lastName = lastName;

  String _firstName;
  String get firstName => _$this._firstName;
  set firstName(String firstName) => _$this._firstName = firstName;

  UpdateUserDtoBuilder() {
    UpdateUserDto._initializeBuilder(this);
  }

  UpdateUserDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _lastName = $v.lastName;
      _firstName = $v.firstName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateUserDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateUserDto;
  }

  @override
  void update(void Function(UpdateUserDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateUserDto build() {
    final _$result = _$v ??
        new _$UpdateUserDto._(
            lastName: BuiltValueNullFieldError.checkNotNull(
                lastName, 'UpdateUserDto', 'lastName'),
            firstName: BuiltValueNullFieldError.checkNotNull(
                firstName, 'UpdateUserDto', 'firstName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
