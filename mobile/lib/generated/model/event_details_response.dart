//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_details_response.g.dart';

abstract class EventDetailsResponse implements Built<EventDetailsResponse, EventDetailsResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'participant_point')
    int get participantPoint;

    @nullable
    @BuiltValueField(wireName: r'point_percentage')
    int get pointPercentage;

    @nullable
    @BuiltValueField(wireName: r'organizer_name')
    String get organizerName;

    @nullable
    @BuiltValueField(wireName: r'event_status_name')
    String get eventStatusName;

    @nullable
    @BuiltValueField(wireName: r'start_in_unix')
    int get startInUnix;

    @nullable
    @BuiltValueField(wireName: r'end_in_unix')
    int get endInUnix;

    @nullable
    @BuiltValueField(wireName: r'category_name')
    String get categoryName;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'max_user')
    int get maxUser;

    @nullable
    @BuiltValueField(wireName: r'lat')
    double get lat;

    @nullable
    @BuiltValueField(wireName: r'lon')
    double get lon;

    @nullable
    @BuiltValueField(wireName: r'country')
    String get country;

    @nullable
    @BuiltValueField(wireName: r'zip_code')
    int get zipCode;

    @nullable
    @BuiltValueField(wireName: r'city')
    String get city;

    @nullable
    @BuiltValueField(wireName: r'street')
    String get street;

    @nullable
    @BuiltValueField(wireName: r'house_number')
    int get houseNumber;

    @nullable
    @BuiltValueField(wireName: r'sublocality')
    String get sublocality;

    @nullable
    @BuiltValueField(wireName: r'cover_url')
    String get coverUrl;

    EventDetailsResponse._();

    static void _initializeBuilder(EventDetailsResponseBuilder b) => b;

    factory EventDetailsResponse([void updates(EventDetailsResponseBuilder b)]) = _$EventDetailsResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<EventDetailsResponse> get serializer => _$EventDetailsResponseSerializer();
}

class _$EventDetailsResponseSerializer implements StructuredSerializer<EventDetailsResponse> {

    @override
    final Iterable<Type> types = const [EventDetailsResponse, _$EventDetailsResponse];
    @override
    final String wireName = r'EventDetailsResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, EventDetailsResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
                    specifiedType: const FullType(String)));
        }
        if (object.participantPoint != null) {
            result
                ..add(r'participant_point')
                ..add(serializers.serialize(object.participantPoint,
                    specifiedType: const FullType(int)));
        }
        if (object.pointPercentage != null) {
            result
                ..add(r'point_percentage')
                ..add(serializers.serialize(object.pointPercentage,
                    specifiedType: const FullType(int)));
        }
        if (object.organizerName != null) {
            result
                ..add(r'organizer_name')
                ..add(serializers.serialize(object.organizerName,
                    specifiedType: const FullType(String)));
        }
        if (object.eventStatusName != null) {
            result
                ..add(r'event_status_name')
                ..add(serializers.serialize(object.eventStatusName,
                    specifiedType: const FullType(String)));
        }
        if (object.startInUnix != null) {
            result
                ..add(r'start_in_unix')
                ..add(serializers.serialize(object.startInUnix,
                    specifiedType: const FullType(int)));
        }
        if (object.endInUnix != null) {
            result
                ..add(r'end_in_unix')
                ..add(serializers.serialize(object.endInUnix,
                    specifiedType: const FullType(int)));
        }
        if (object.categoryName != null) {
            result
                ..add(r'category_name')
                ..add(serializers.serialize(object.categoryName,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.maxUser != null) {
            result
                ..add(r'max_user')
                ..add(serializers.serialize(object.maxUser,
                    specifiedType: const FullType(int)));
        }
        if (object.lat != null) {
            result
                ..add(r'lat')
                ..add(serializers.serialize(object.lat,
                    specifiedType: const FullType(double)));
        }
        if (object.lon != null) {
            result
                ..add(r'lon')
                ..add(serializers.serialize(object.lon,
                    specifiedType: const FullType(double)));
        }
        if (object.country != null) {
            result
                ..add(r'country')
                ..add(serializers.serialize(object.country,
                    specifiedType: const FullType(String)));
        }
        if (object.zipCode != null) {
            result
                ..add(r'zip_code')
                ..add(serializers.serialize(object.zipCode,
                    specifiedType: const FullType(int)));
        }
        if (object.city != null) {
            result
                ..add(r'city')
                ..add(serializers.serialize(object.city,
                    specifiedType: const FullType(String)));
        }
        if (object.street != null) {
            result
                ..add(r'street')
                ..add(serializers.serialize(object.street,
                    specifiedType: const FullType(String)));
        }
        if (object.houseNumber != null) {
            result
                ..add(r'house_number')
                ..add(serializers.serialize(object.houseNumber,
                    specifiedType: const FullType(int)));
        }
        if (object.sublocality != null) {
            result
                ..add(r'sublocality')
                ..add(serializers.serialize(object.sublocality,
                    specifiedType: const FullType(String)));
        }
        if (object.coverUrl != null) {
            result
                ..add(r'cover_url')
                ..add(serializers.serialize(object.coverUrl,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    EventDetailsResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EventDetailsResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'id':
                    result.id = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'participant_point':
                    result.participantPoint = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'point_percentage':
                    result.pointPercentage = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'organizer_name':
                    result.organizerName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'event_status_name':
                    result.eventStatusName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'start_in_unix':
                    result.startInUnix = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'end_in_unix':
                    result.endInUnix = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'category_name':
                    result.categoryName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'description':
                    result.description = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'max_user':
                    result.maxUser = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'lat':
                    result.lat = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'lon':
                    result.lon = serializers.deserialize(value,
                        specifiedType: const FullType(double)) as double;
                    break;
                case r'country':
                    result.country = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'zip_code':
                    result.zipCode = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'city':
                    result.city = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'street':
                    result.street = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'house_number':
                    result.houseNumber = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'sublocality':
                    result.sublocality = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'cover_url':
                    result.coverUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

