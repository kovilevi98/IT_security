// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'edit_event_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EditEventRequest extends EditEventRequest {
  @override
  final String eventId;
  @override
  final String name;
  @override
  final int startInUnix;
  @override
  final int endInUnix;
  @override
  final int categoryId;
  @override
  final String description;
  @override
  final int maxUser;
  @override
  final double lat;
  @override
  final double lon;
  @override
  final String country;
  @override
  final int zipCode;
  @override
  final String city;
  @override
  final String street;
  @override
  final int houseNumber;
  @override
  final String sublocality;

  factory _$EditEventRequest(
          [void Function(EditEventRequestBuilder) updates]) =>
      (new EditEventRequestBuilder()..update(updates)).build();

  _$EditEventRequest._(
      {this.eventId,
      this.name,
      this.startInUnix,
      this.endInUnix,
      this.categoryId,
      this.description,
      this.maxUser,
      this.lat,
      this.lon,
      this.country,
      this.zipCode,
      this.city,
      this.street,
      this.houseNumber,
      this.sublocality})
      : super._();

  @override
  EditEventRequest rebuild(void Function(EditEventRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EditEventRequestBuilder toBuilder() =>
      new EditEventRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EditEventRequest &&
        eventId == other.eventId &&
        name == other.name &&
        startInUnix == other.startInUnix &&
        endInUnix == other.endInUnix &&
        categoryId == other.categoryId &&
        description == other.description &&
        maxUser == other.maxUser &&
        lat == other.lat &&
        lon == other.lon &&
        country == other.country &&
        zipCode == other.zipCode &&
        city == other.city &&
        street == other.street &&
        houseNumber == other.houseNumber &&
        sublocality == other.sublocality;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                0,
                                                                eventId
                                                                    .hashCode),
                                                            name.hashCode),
                                                        startInUnix.hashCode),
                                                    endInUnix.hashCode),
                                                categoryId.hashCode),
                                            description.hashCode),
                                        maxUser.hashCode),
                                    lat.hashCode),
                                lon.hashCode),
                            country.hashCode),
                        zipCode.hashCode),
                    city.hashCode),
                street.hashCode),
            houseNumber.hashCode),
        sublocality.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EditEventRequest')
          ..add('eventId', eventId)
          ..add('name', name)
          ..add('startInUnix', startInUnix)
          ..add('endInUnix', endInUnix)
          ..add('categoryId', categoryId)
          ..add('description', description)
          ..add('maxUser', maxUser)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('country', country)
          ..add('zipCode', zipCode)
          ..add('city', city)
          ..add('street', street)
          ..add('houseNumber', houseNumber)
          ..add('sublocality', sublocality))
        .toString();
  }
}

class EditEventRequestBuilder
    implements Builder<EditEventRequest, EditEventRequestBuilder> {
  _$EditEventRequest _$v;

  String _eventId;
  String get eventId => _$this._eventId;
  set eventId(String eventId) => _$this._eventId = eventId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _startInUnix;
  int get startInUnix => _$this._startInUnix;
  set startInUnix(int startInUnix) => _$this._startInUnix = startInUnix;

  int _endInUnix;
  int get endInUnix => _$this._endInUnix;
  set endInUnix(int endInUnix) => _$this._endInUnix = endInUnix;

  int _categoryId;
  int get categoryId => _$this._categoryId;
  set categoryId(int categoryId) => _$this._categoryId = categoryId;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _maxUser;
  int get maxUser => _$this._maxUser;
  set maxUser(int maxUser) => _$this._maxUser = maxUser;

  double _lat;
  double get lat => _$this._lat;
  set lat(double lat) => _$this._lat = lat;

  double _lon;
  double get lon => _$this._lon;
  set lon(double lon) => _$this._lon = lon;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  int _zipCode;
  int get zipCode => _$this._zipCode;
  set zipCode(int zipCode) => _$this._zipCode = zipCode;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _street;
  String get street => _$this._street;
  set street(String street) => _$this._street = street;

  int _houseNumber;
  int get houseNumber => _$this._houseNumber;
  set houseNumber(int houseNumber) => _$this._houseNumber = houseNumber;

  String _sublocality;
  String get sublocality => _$this._sublocality;
  set sublocality(String sublocality) => _$this._sublocality = sublocality;

  EditEventRequestBuilder() {
    EditEventRequest._initializeBuilder(this);
  }

  EditEventRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _eventId = $v.eventId;
      _name = $v.name;
      _startInUnix = $v.startInUnix;
      _endInUnix = $v.endInUnix;
      _categoryId = $v.categoryId;
      _description = $v.description;
      _maxUser = $v.maxUser;
      _lat = $v.lat;
      _lon = $v.lon;
      _country = $v.country;
      _zipCode = $v.zipCode;
      _city = $v.city;
      _street = $v.street;
      _houseNumber = $v.houseNumber;
      _sublocality = $v.sublocality;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EditEventRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EditEventRequest;
  }

  @override
  void update(void Function(EditEventRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EditEventRequest build() {
    final _$result = _$v ??
        new _$EditEventRequest._(
            eventId: eventId,
            name: name,
            startInUnix: startInUnix,
            endInUnix: endInUnix,
            categoryId: categoryId,
            description: description,
            maxUser: maxUser,
            lat: lat,
            lon: lon,
            country: country,
            zipCode: zipCode,
            city: city,
            street: street,
            houseNumber: houseNumber,
            sublocality: sublocality);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
