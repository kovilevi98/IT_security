// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'event_id_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventIdResponse extends EventIdResponse {
  @override
  final String eventId;

  factory _$EventIdResponse([void Function(EventIdResponseBuilder) updates]) =>
      (new EventIdResponseBuilder()..update(updates)).build();

  _$EventIdResponse._({this.eventId}) : super._();

  @override
  EventIdResponse rebuild(void Function(EventIdResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventIdResponseBuilder toBuilder() =>
      new EventIdResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventIdResponse && eventId == other.eventId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, eventId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventIdResponse')
          ..add('eventId', eventId))
        .toString();
  }
}

class EventIdResponseBuilder
    implements Builder<EventIdResponse, EventIdResponseBuilder> {
  _$EventIdResponse _$v;

  String _eventId;
  String get eventId => _$this._eventId;
  set eventId(String eventId) => _$this._eventId = eventId;

  EventIdResponseBuilder() {
    EventIdResponse._initializeBuilder(this);
  }

  EventIdResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventIdResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventIdResponse;
  }

  @override
  void update(void Function(EventIdResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventIdResponse build() {
    final _$result = _$v ?? new _$EventIdResponse._(eventId: eventId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
