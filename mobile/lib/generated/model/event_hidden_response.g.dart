// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'event_hidden_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventHiddenResponse extends EventHiddenResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final String organizerName;
  @override
  final String eventStatusName;
  @override
  final String coverUrl;
  @override
  final int startInUnix;

  factory _$EventHiddenResponse(
          [void Function(EventHiddenResponseBuilder) updates]) =>
      (new EventHiddenResponseBuilder()..update(updates)).build();

  _$EventHiddenResponse._(
      {this.id,
      this.name,
      this.organizerName,
      this.eventStatusName,
      this.coverUrl,
      this.startInUnix})
      : super._();

  @override
  EventHiddenResponse rebuild(
          void Function(EventHiddenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventHiddenResponseBuilder toBuilder() =>
      new EventHiddenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventHiddenResponse &&
        id == other.id &&
        name == other.name &&
        organizerName == other.organizerName &&
        eventStatusName == other.eventStatusName &&
        coverUrl == other.coverUrl &&
        startInUnix == other.startInUnix;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), name.hashCode),
                    organizerName.hashCode),
                eventStatusName.hashCode),
            coverUrl.hashCode),
        startInUnix.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventHiddenResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('organizerName', organizerName)
          ..add('eventStatusName', eventStatusName)
          ..add('coverUrl', coverUrl)
          ..add('startInUnix', startInUnix))
        .toString();
  }
}

class EventHiddenResponseBuilder
    implements Builder<EventHiddenResponse, EventHiddenResponseBuilder> {
  _$EventHiddenResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _organizerName;
  String get organizerName => _$this._organizerName;
  set organizerName(String organizerName) =>
      _$this._organizerName = organizerName;

  String _eventStatusName;
  String get eventStatusName => _$this._eventStatusName;
  set eventStatusName(String eventStatusName) =>
      _$this._eventStatusName = eventStatusName;

  String _coverUrl;
  String get coverUrl => _$this._coverUrl;
  set coverUrl(String coverUrl) => _$this._coverUrl = coverUrl;

  int _startInUnix;
  int get startInUnix => _$this._startInUnix;
  set startInUnix(int startInUnix) => _$this._startInUnix = startInUnix;

  EventHiddenResponseBuilder() {
    EventHiddenResponse._initializeBuilder(this);
  }

  EventHiddenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _organizerName = $v.organizerName;
      _eventStatusName = $v.eventStatusName;
      _coverUrl = $v.coverUrl;
      _startInUnix = $v.startInUnix;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventHiddenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventHiddenResponse;
  }

  @override
  void update(void Function(EventHiddenResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventHiddenResponse build() {
    final _$result = _$v ??
        new _$EventHiddenResponse._(
            id: id,
            name: name,
            organizerName: organizerName,
            eventStatusName: eventStatusName,
            coverUrl: coverUrl,
            startInUnix: startInUnix);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
