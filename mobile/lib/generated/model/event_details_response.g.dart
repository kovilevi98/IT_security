// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of 'event_details_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EventDetailsResponse extends EventDetailsResponse {
  @override
  final String id;
  @override
  final String name;
  @override
  final int participantPoint;
  @override
  final int pointPercentage;
  @override
  final String organizerName;
  @override
  final String eventStatusName;
  @override
  final int startInUnix;
  @override
  final int endInUnix;
  @override
  final String categoryName;
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
  @override
  final String coverUrl;

  factory _$EventDetailsResponse(
          [void Function(EventDetailsResponseBuilder) updates]) =>
      (new EventDetailsResponseBuilder()..update(updates)).build();

  _$EventDetailsResponse._(
      {this.id,
      this.name,
      this.participantPoint,
      this.pointPercentage,
      this.organizerName,
      this.eventStatusName,
      this.startInUnix,
      this.endInUnix,
      this.categoryName,
      this.description,
      this.maxUser,
      this.lat,
      this.lon,
      this.country,
      this.zipCode,
      this.city,
      this.street,
      this.houseNumber,
      this.sublocality,
      this.coverUrl})
      : super._();

  @override
  EventDetailsResponse rebuild(
          void Function(EventDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventDetailsResponseBuilder toBuilder() =>
      new EventDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventDetailsResponse &&
        id == other.id &&
        name == other.name &&
        participantPoint == other.participantPoint &&
        pointPercentage == other.pointPercentage &&
        organizerName == other.organizerName &&
        eventStatusName == other.eventStatusName &&
        startInUnix == other.startInUnix &&
        endInUnix == other.endInUnix &&
        categoryName == other.categoryName &&
        description == other.description &&
        maxUser == other.maxUser &&
        lat == other.lat &&
        lon == other.lon &&
        country == other.country &&
        zipCode == other.zipCode &&
        city == other.city &&
        street == other.street &&
        houseNumber == other.houseNumber &&
        sublocality == other.sublocality &&
        coverUrl == other.coverUrl;
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
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                $jc(
                                                                                    0,
                                                                                    id
                                                                                        .hashCode),
                                                                                name
                                                                                    .hashCode),
                                                                            participantPoint
                                                                                .hashCode),
                                                                        pointPercentage
                                                                            .hashCode),
                                                                    organizerName
                                                                        .hashCode),
                                                                eventStatusName
                                                                    .hashCode),
                                                            startInUnix
                                                                .hashCode),
                                                        endInUnix.hashCode),
                                                    categoryName.hashCode),
                                                description.hashCode),
                                            maxUser.hashCode),
                                        lat.hashCode),
                                    lon.hashCode),
                                country.hashCode),
                            zipCode.hashCode),
                        city.hashCode),
                    street.hashCode),
                houseNumber.hashCode),
            sublocality.hashCode),
        coverUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventDetailsResponse')
          ..add('id', id)
          ..add('name', name)
          ..add('participantPoint', participantPoint)
          ..add('pointPercentage', pointPercentage)
          ..add('organizerName', organizerName)
          ..add('eventStatusName', eventStatusName)
          ..add('startInUnix', startInUnix)
          ..add('endInUnix', endInUnix)
          ..add('categoryName', categoryName)
          ..add('description', description)
          ..add('maxUser', maxUser)
          ..add('lat', lat)
          ..add('lon', lon)
          ..add('country', country)
          ..add('zipCode', zipCode)
          ..add('city', city)
          ..add('street', street)
          ..add('houseNumber', houseNumber)
          ..add('sublocality', sublocality)
          ..add('coverUrl', coverUrl))
        .toString();
  }
}

class EventDetailsResponseBuilder
    implements Builder<EventDetailsResponse, EventDetailsResponseBuilder> {
  _$EventDetailsResponse _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _participantPoint;
  int get participantPoint => _$this._participantPoint;
  set participantPoint(int participantPoint) =>
      _$this._participantPoint = participantPoint;

  int _pointPercentage;
  int get pointPercentage => _$this._pointPercentage;
  set pointPercentage(int pointPercentage) =>
      _$this._pointPercentage = pointPercentage;

  String _organizerName;
  String get organizerName => _$this._organizerName;
  set organizerName(String organizerName) =>
      _$this._organizerName = organizerName;

  String _eventStatusName;
  String get eventStatusName => _$this._eventStatusName;
  set eventStatusName(String eventStatusName) =>
      _$this._eventStatusName = eventStatusName;

  int _startInUnix;
  int get startInUnix => _$this._startInUnix;
  set startInUnix(int startInUnix) => _$this._startInUnix = startInUnix;

  int _endInUnix;
  int get endInUnix => _$this._endInUnix;
  set endInUnix(int endInUnix) => _$this._endInUnix = endInUnix;

  String _categoryName;
  String get categoryName => _$this._categoryName;
  set categoryName(String categoryName) => _$this._categoryName = categoryName;

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

  String _coverUrl;
  String get coverUrl => _$this._coverUrl;
  set coverUrl(String coverUrl) => _$this._coverUrl = coverUrl;

  EventDetailsResponseBuilder() {
    EventDetailsResponse._initializeBuilder(this);
  }

  EventDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _participantPoint = $v.participantPoint;
      _pointPercentage = $v.pointPercentage;
      _organizerName = $v.organizerName;
      _eventStatusName = $v.eventStatusName;
      _startInUnix = $v.startInUnix;
      _endInUnix = $v.endInUnix;
      _categoryName = $v.categoryName;
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
      _coverUrl = $v.coverUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventDetailsResponse;
  }

  @override
  void update(void Function(EventDetailsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventDetailsResponse build() {
    final _$result = _$v ??
        new _$EventDetailsResponse._(
            id: id,
            name: name,
            participantPoint: participantPoint,
            pointPercentage: pointPercentage,
            organizerName: organizerName,
            eventStatusName: eventStatusName,
            startInUnix: startInUnix,
            endInUnix: endInUnix,
            categoryName: categoryName,
            description: description,
            maxUser: maxUser,
            lat: lat,
            lon: lon,
            country: country,
            zipCode: zipCode,
            city: city,
            street: street,
            houseNumber: houseNumber,
            sublocality: sublocality,
            coverUrl: coverUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
