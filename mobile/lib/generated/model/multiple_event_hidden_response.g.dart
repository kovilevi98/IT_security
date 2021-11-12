// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'multiple_event_hidden_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MultipleEventHiddenResponse extends MultipleEventHiddenResponse {
  @override
  final BuiltList<EventHiddenResponse> events;

  factory _$MultipleEventHiddenResponse(
          [void Function(MultipleEventHiddenResponseBuilder) updates]) =>
      (new MultipleEventHiddenResponseBuilder()..update(updates)).build();

  _$MultipleEventHiddenResponse._({this.events}) : super._();

  @override
  MultipleEventHiddenResponse rebuild(
          void Function(MultipleEventHiddenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MultipleEventHiddenResponseBuilder toBuilder() =>
      new MultipleEventHiddenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MultipleEventHiddenResponse && events == other.events;
  }

  @override
  int get hashCode {
    return $jf($jc(0, events.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MultipleEventHiddenResponse')
          ..add('events', events))
        .toString();
  }
}

class MultipleEventHiddenResponseBuilder
    implements
        Builder<MultipleEventHiddenResponse,
            MultipleEventHiddenResponseBuilder> {
  _$MultipleEventHiddenResponse _$v;

  ListBuilder<EventHiddenResponse> _events;
  ListBuilder<EventHiddenResponse> get events =>
      _$this._events ??= new ListBuilder<EventHiddenResponse>();
  set events(ListBuilder<EventHiddenResponse> events) =>
      _$this._events = events;

  MultipleEventHiddenResponseBuilder() {
    MultipleEventHiddenResponse._initializeBuilder(this);
  }

  MultipleEventHiddenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _events = $v.events?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MultipleEventHiddenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MultipleEventHiddenResponse;
  }

  @override
  void update(void Function(MultipleEventHiddenResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MultipleEventHiddenResponse build() {
    _$MultipleEventHiddenResponse _$result;
    try {
      _$result =
          _$v ?? new _$MultipleEventHiddenResponse._(events: _events?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MultipleEventHiddenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
