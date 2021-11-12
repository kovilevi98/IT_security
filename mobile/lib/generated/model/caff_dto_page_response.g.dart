// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'caff_dto_page_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CaffDtoPageResponse extends CaffDtoPageResponse {
  @override
  final BuiltList<CaffDto> results;
  @override
  final int currentPage;
  @override
  final int totalCount;

  factory _$CaffDtoPageResponse(
          [void Function(CaffDtoPageResponseBuilder) updates]) =>
      (new CaffDtoPageResponseBuilder()..update(updates)).build();

  _$CaffDtoPageResponse._({this.results, this.currentPage, this.totalCount})
      : super._();

  @override
  CaffDtoPageResponse rebuild(
          void Function(CaffDtoPageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CaffDtoPageResponseBuilder toBuilder() =>
      new CaffDtoPageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CaffDtoPageResponse &&
        results == other.results &&
        currentPage == other.currentPage &&
        totalCount == other.totalCount;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, results.hashCode), currentPage.hashCode),
        totalCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CaffDtoPageResponse')
          ..add('results', results)
          ..add('currentPage', currentPage)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class CaffDtoPageResponseBuilder
    implements Builder<CaffDtoPageResponse, CaffDtoPageResponseBuilder> {
  _$CaffDtoPageResponse _$v;

  ListBuilder<CaffDto> _results;
  ListBuilder<CaffDto> get results =>
      _$this._results ??= new ListBuilder<CaffDto>();
  set results(ListBuilder<CaffDto> results) => _$this._results = results;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  CaffDtoPageResponseBuilder() {
    CaffDtoPageResponse._initializeBuilder(this);
  }

  CaffDtoPageResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _results = $v.results?.toBuilder();
      _currentPage = $v.currentPage;
      _totalCount = $v.totalCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CaffDtoPageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CaffDtoPageResponse;
  }

  @override
  void update(void Function(CaffDtoPageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CaffDtoPageResponse build() {
    _$CaffDtoPageResponse _$result;
    try {
      _$result = _$v ??
          new _$CaffDtoPageResponse._(
              results: _results?.build(),
              currentPage: currentPage,
              totalCount: totalCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CaffDtoPageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
