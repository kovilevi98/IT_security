// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'event_id_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventIdRequest extends EventIdRequest {
  @override
  final String eventId;

  factory _$EventIdRequest([void Function(EventIdRequestBuilder) updates]) =>
      (new EventIdRequestBuilder()..update(updates)).build();

  _$EventIdRequest._({this.eventId}) : super._();

  @override
  EventIdRequest rebuild(void Function(EventIdRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventIdRequestBuilder toBuilder() =>
      new EventIdRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventIdRequest && eventId == other.eventId;
  }

  @override
  int get hashCode {
    return $jf($jc(0, eventId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventIdRequest')
          ..add('eventId', eventId))
        .toString();
  }
}

class EventIdRequestBuilder
    implements Builder<EventIdRequest, EventIdRequestBuilder> {
  _$EventIdRequest _$v;

  String _eventId;
  String get eventId => _$this._eventId;
  set eventId(String eventId) => _$this._eventId = eventId;

  EventIdRequestBuilder() {
    EventIdRequest._initializeBuilder(this);
  }

  EventIdRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventIdRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventIdRequest;
  }

  @override
  void update(void Function(EventIdRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventIdRequest build() {
    final _$result = _$v ?? new _$EventIdRequest._(eventId: eventId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
