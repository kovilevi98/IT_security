// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'add_comment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AddCommentDto extends AddCommentDto {
  @override
  final String commentText;

  factory _$AddCommentDto([void Function(AddCommentDtoBuilder) updates]) =>
      (new AddCommentDtoBuilder()..update(updates)).build();

  _$AddCommentDto._({this.commentText}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        commentText, 'AddCommentDto', 'commentText');
  }

  @override
  AddCommentDto rebuild(void Function(AddCommentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddCommentDtoBuilder toBuilder() => new AddCommentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddCommentDto && commentText == other.commentText;
  }

  @override
  int get hashCode {
    return $jf($jc(0, commentText.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddCommentDto')
          ..add('commentText', commentText))
        .toString();
  }
}

class AddCommentDtoBuilder
    implements Builder<AddCommentDto, AddCommentDtoBuilder> {
  _$AddCommentDto _$v;

  String _commentText;
  String get commentText => _$this._commentText;
  set commentText(String commentText) => _$this._commentText = commentText;

  AddCommentDtoBuilder() {
    AddCommentDto._initializeBuilder(this);
  }

  AddCommentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentText = $v.commentText;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddCommentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddCommentDto;
  }

  @override
  void update(void Function(AddCommentDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddCommentDto build() {
    final _$result = _$v ??
        new _$AddCommentDto._(
            commentText: BuiltValueNullFieldError.checkNotNull(
                commentText, 'AddCommentDto', 'commentText'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
