// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'validation_problem_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ValidationProblemDetails extends ValidationProblemDetails {
  @override
  final String type;
  @override
  final String title;
  @override
  final int status;
  @override
  final String detail;
  @override
  final String instance;
  @override
  final BuiltMap<String, BuiltList<String>> errors;

  factory _$ValidationProblemDetails(
          [void Function(ValidationProblemDetailsBuilder) updates]) =>
      (new ValidationProblemDetailsBuilder()..update(updates)).build();

  _$ValidationProblemDetails._(
      {this.type,
      this.title,
      this.status,
      this.detail,
      this.instance,
      this.errors})
      : super._();

  @override
  ValidationProblemDetails rebuild(
          void Function(ValidationProblemDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationProblemDetailsBuilder toBuilder() =>
      new ValidationProblemDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationProblemDetails &&
        type == other.type &&
        title == other.title &&
        status == other.status &&
        detail == other.detail &&
        instance == other.instance &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, type.hashCode), title.hashCode),
                    status.hashCode),
                detail.hashCode),
            instance.hashCode),
        errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValidationProblemDetails')
          ..add('type', type)
          ..add('title', title)
          ..add('status', status)
          ..add('detail', detail)
          ..add('instance', instance)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationProblemDetailsBuilder
    implements
        Builder<ValidationProblemDetails, ValidationProblemDetailsBuilder> {
  _$ValidationProblemDetails _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _detail;
  String get detail => _$this._detail;
  set detail(String detail) => _$this._detail = detail;

  String _instance;
  String get instance => _$this._instance;
  set instance(String instance) => _$this._instance = instance;

  MapBuilder<String, BuiltList<String>> _errors;
  MapBuilder<String, BuiltList<String>> get errors =>
      _$this._errors ??= new MapBuilder<String, BuiltList<String>>();
  set errors(MapBuilder<String, BuiltList<String>> errors) =>
      _$this._errors = errors;

  ValidationProblemDetailsBuilder() {
    ValidationProblemDetails._initializeBuilder(this);
  }

  ValidationProblemDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _title = $v.title;
      _status = $v.status;
      _detail = $v.detail;
      _instance = $v.instance;
      _errors = $v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationProblemDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidationProblemDetails;
  }

  @override
  void update(void Function(ValidationProblemDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidationProblemDetails build() {
    _$ValidationProblemDetails _$result;
    try {
      _$result = _$v ??
          new _$ValidationProblemDetails._(
              type: type,
              title: title,
              status: status,
              detail: detail,
              instance: instance,
              errors: _errors?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ValidationProblemDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
