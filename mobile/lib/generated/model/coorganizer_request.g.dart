// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'coorganizer_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CoorganizerRequest extends CoorganizerRequest {
  @override
  final String eventId;
  @override
  final BuiltList<UserIdRequest> userIds;

  factory _$CoorganizerRequest(
          [void Function(CoorganizerRequestBuilder) updates]) =>
      (new CoorganizerRequestBuilder()..update(updates)).build();

  _$CoorganizerRequest._({this.eventId, this.userIds}) : super._();

  @override
  CoorganizerRequest rebuild(
          void Function(CoorganizerRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CoorganizerRequestBuilder toBuilder() =>
      new CoorganizerRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CoorganizerRequest &&
        eventId == other.eventId &&
        userIds == other.userIds;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, eventId.hashCode), userIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CoorganizerRequest')
          ..add('eventId', eventId)
          ..add('userIds', userIds))
        .toString();
  }
}

class CoorganizerRequestBuilder
    implements Builder<CoorganizerRequest, CoorganizerRequestBuilder> {
  _$CoorganizerRequest _$v;

  String _eventId;
  String get eventId => _$this._eventId;
  set eventId(String eventId) => _$this._eventId = eventId;

  ListBuilder<UserIdRequest> _userIds;
  ListBuilder<UserIdRequest> get userIds =>
      _$this._userIds ??= new ListBuilder<UserIdRequest>();
  set userIds(ListBuilder<UserIdRequest> userIds) => _$this._userIds = userIds;

  CoorganizerRequestBuilder() {
    CoorganizerRequest._initializeBuilder(this);
  }

  CoorganizerRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _userIds = $v.userIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CoorganizerRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CoorganizerRequest;
  }

  @override
  void update(void Function(CoorganizerRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CoorganizerRequest build() {
    _$CoorganizerRequest _$result;
    try {
      _$result = _$v ??
          new _$CoorganizerRequest._(
              eventId: eventId, userIds: _userIds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'userIds';
        _userIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CoorganizerRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
