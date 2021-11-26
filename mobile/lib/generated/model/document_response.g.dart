// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'document_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentResponse extends DocumentResponse {
  @override
  final String title;
  @override
  final String content;

  factory _$DocumentResponse(
          [void Function(DocumentResponseBuilder) updates]) =>
      (new DocumentResponseBuilder()..update(updates)).build();

  _$DocumentResponse._({this.title, this.content}) : super._();

  @override
  DocumentResponse rebuild(void Function(DocumentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentResponseBuilder toBuilder() =>
      new DocumentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentResponse &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentResponse')
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class DocumentResponseBuilder
    implements Builder<DocumentResponse, DocumentResponseBuilder> {
  _$DocumentResponse _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  DocumentResponseBuilder() {
    DocumentResponse._initializeBuilder(this);
  }

  DocumentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentResponse;
  }

  @override
  void update(void Function(DocumentResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentResponse build() {
    final _$result =
        _$v ?? new _$DocumentResponse._(title: title, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
