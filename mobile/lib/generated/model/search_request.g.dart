// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'search_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchRequest extends SearchRequest {
  @override
  final String value;

  factory _$SearchRequest([void Function(SearchRequestBuilder) updates]) =>
      (new SearchRequestBuilder()..update(updates)).build();

  _$SearchRequest._({this.value}) : super._();

  @override
  SearchRequest rebuild(void Function(SearchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchRequestBuilder toBuilder() => new SearchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchRequest && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchRequest')..add('value', value))
        .toString();
  }
}

class SearchRequestBuilder
    implements Builder<SearchRequest, SearchRequestBuilder> {
  _$SearchRequest _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  SearchRequestBuilder() {
    SearchRequest._initializeBuilder(this);
  }

  SearchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchRequest;
  }

  @override
  void update(void Function(SearchRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchRequest build() {
    final _$result = _$v ?? new _$SearchRequest._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
