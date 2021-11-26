// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'user_dto_page_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserDtoPageResponse extends UserDtoPageResponse {
  @override
  final BuiltList<UserDto> results;
  @override
  final int currentPage;
  @override
  final int totalCount;

  factory _$UserDtoPageResponse(
          [void Function(UserDtoPageResponseBuilder) updates]) =>
      (new UserDtoPageResponseBuilder()..update(updates)).build();

  _$UserDtoPageResponse._({this.results, this.currentPage, this.totalCount})
      : super._();

  @override
  UserDtoPageResponse rebuild(
          void Function(UserDtoPageResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserDtoPageResponseBuilder toBuilder() =>
      new UserDtoPageResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserDtoPageResponse &&
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
    return (newBuiltValueToStringHelper('UserDtoPageResponse')
          ..add('results', results)
          ..add('currentPage', currentPage)
          ..add('totalCount', totalCount))
        .toString();
  }
}

class UserDtoPageResponseBuilder
    implements Builder<UserDtoPageResponse, UserDtoPageResponseBuilder> {
  _$UserDtoPageResponse _$v;

  ListBuilder<UserDto> _results;
  ListBuilder<UserDto> get results =>
      _$this._results ??= new ListBuilder<UserDto>();
  set results(ListBuilder<UserDto> results) => _$this._results = results;

  int _currentPage;
  int get currentPage => _$this._currentPage;
  set currentPage(int currentPage) => _$this._currentPage = currentPage;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  UserDtoPageResponseBuilder() {
    UserDtoPageResponse._initializeBuilder(this);
  }

  UserDtoPageResponseBuilder get _$this {
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
  void replace(UserDtoPageResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserDtoPageResponse;
  }

  @override
  void update(void Function(UserDtoPageResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserDtoPageResponse build() {
    _$UserDtoPageResponse _$result;
    try {
      _$result = _$v ??
          new _$UserDtoPageResponse._(
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
            'UserDtoPageResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
