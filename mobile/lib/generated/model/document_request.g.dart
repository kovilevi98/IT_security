// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'document_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DocumentRequest extends DocumentRequest {
  @override
  final String slug;

  factory _$DocumentRequest([void Function(DocumentRequestBuilder) updates]) =>
      (new DocumentRequestBuilder()..update(updates)).build();

  _$DocumentRequest._({this.slug}) : super._();

  @override
  DocumentRequest rebuild(void Function(DocumentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DocumentRequestBuilder toBuilder() =>
      new DocumentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DocumentRequest && slug == other.slug;
  }

  @override
  int get hashCode {
    return $jf($jc(0, slug.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DocumentRequest')..add('slug', slug))
        .toString();
  }
}

class DocumentRequestBuilder
    implements Builder<DocumentRequest, DocumentRequestBuilder> {
  _$DocumentRequest _$v;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  DocumentRequestBuilder() {
    DocumentRequest._initializeBuilder(this);
  }

  DocumentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slug = $v.slug;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DocumentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DocumentRequest;
  }

  @override
  void update(void Function(DocumentRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DocumentRequest build() {
    final _$result = _$v ?? new _$DocumentRequest._(slug: slug);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
