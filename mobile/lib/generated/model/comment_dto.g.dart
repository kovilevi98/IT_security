// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'comment_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CommentDto extends CommentDto {
  @override
  final int commentId;
  @override
  final String commentText;
  @override
  final String commentedBy;
  @override
  final int commentedByUserId;

  factory _$CommentDto([void Function(CommentDtoBuilder) updates]) =>
      (new CommentDtoBuilder()..update(updates)).build();

  _$CommentDto._(
      {this.commentId,
      this.commentText,
      this.commentedBy,
      this.commentedByUserId})
      : super._();

  @override
  CommentDto rebuild(void Function(CommentDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentDtoBuilder toBuilder() => new CommentDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentDto &&
        commentId == other.commentId &&
        commentText == other.commentText &&
        commentedBy == other.commentedBy &&
        commentedByUserId == other.commentedByUserId;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, commentId.hashCode), commentText.hashCode),
            commentedBy.hashCode),
        commentedByUserId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommentDto')
          ..add('commentId', commentId)
          ..add('commentText', commentText)
          ..add('commentedBy', commentedBy)
          ..add('commentedByUserId', commentedByUserId))
        .toString();
  }
}

class CommentDtoBuilder implements Builder<CommentDto, CommentDtoBuilder> {
  _$CommentDto _$v;

  int _commentId;
  int get commentId => _$this._commentId;
  set commentId(int commentId) => _$this._commentId = commentId;

  String _commentText;
  String get commentText => _$this._commentText;
  set commentText(String commentText) => _$this._commentText = commentText;

  String _commentedBy;
  String get commentedBy => _$this._commentedBy;
  set commentedBy(String commentedBy) => _$this._commentedBy = commentedBy;

  int _commentedByUserId;
  int get commentedByUserId => _$this._commentedByUserId;
  set commentedByUserId(int commentedByUserId) =>
      _$this._commentedByUserId = commentedByUserId;

  CommentDtoBuilder() {
    CommentDto._initializeBuilder(this);
  }

  CommentDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentId = $v.commentId;
      _commentText = $v.commentText;
      _commentedBy = $v.commentedBy;
      _commentedByUserId = $v.commentedByUserId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentDto other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentDto;
  }

  @override
  void update(void Function(CommentDtoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommentDto build() {
    final _$result = _$v ??
        new _$CommentDto._(
            commentId: commentId,
            commentText: commentText,
            commentedBy: commentedBy,
            commentedByUserId: commentedByUserId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
