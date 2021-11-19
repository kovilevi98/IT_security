// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'update_caff_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateCaffDto extends UpdateCaffDto {
  @override
  final String caffName;

  factory _$UpdateCaffDto([void Function(UpdateCaffDtoBuilder) updates]) =>
      (new UpdateCaffDtoBuilder()..update(updates)).build();

  _$UpdateCaffDto._({this.caffName}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        caffName, 'UpdateCaffDto', 'caffName');
  }

  @override
  UpdateCaffDto rebuild(void Function(UpdateCaffDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateCaffDtoBuilder toBuilder() => new UpdateCaffDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateCaffDto && caffName == other.caffName;
  }

  @override
  int get hashCode {
    return $jf($jc(0, caffName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UpdateCaffDto')
          ..add('caffName', caffName))
        .toString();
  }
}

class UpdateCaffDtoBuilder
    implements Builder<UpdateCaffDto, UpdateCaffDtoBuilder> {
  _$UpdateCaffDto _$v;

  String _caffName;
  String get caffName => _$this._caffName;
  set caffName(String caffName) => _$this._caffName = caffName;

  UpdateCaffDtoBuilder() {
    UpdateCaffDto._initializeBuilder(this);
  }

  UpdateCaffDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _caffName = $v.caffName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateCaffDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UpdateCaffDto;
  }

  @override
  void update(void Function(UpdateCaffDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UpdateCaffDto build() {
    final _$result = _$v ??
        new _$UpdateCaffDto._(
            caffName: BuiltValueNullFieldError.checkNotNull(
                caffName, 'UpdateCaffDto', 'caffName'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
