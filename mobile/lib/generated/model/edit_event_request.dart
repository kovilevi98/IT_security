//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'edit_event_request.g.dart';

abstract class EditEventRequest implements Built<EditEventRequest, EditEventRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'event_id')
    String get eventId;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'start_in_unix')
    int get startInUnix;

    @nullable
    @BuiltValueField(wireName: r'end_in_unix')
    int get endInUnix;

    @nullable
    @BuiltValueField(wireName: r'category_id')
    int get categoryId;

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

    EditEventRequest._();

    static void _initializeBuilder(EditEventRequestBuilder b) => b;

    factory EditEventRequest([void updates(EditEventRequestBuilder b)]) = _$EditEventRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<EditEventRequest> get serializer => _$EditEventRequestSerializer();
}

class _$EditEventRequestSerializer implements StructuredSerializer<EditEventRequest> {

    @override
    final Iterable<Type> types = const [EditEventRequest, _$EditEventRequest];
    @override
    final String wireName = r'EditEventRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, EditEventRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.eventId != null) {
            result
                ..add(r'event_id')
                ..add(serializers.serialize(object.eventId,
                    specifiedType: const FullType(String)));
        }
        if (object.name != null) {
            result
                ..add(r'name')
                ..add(serializers.serialize(object.name,
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
        if (object.categoryId != null) {
            result
                ..add(r'category_id')
                ..add(serializers.serialize(object.categoryId,
                    specifiedType: const FullType(int)));
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
        return result;
    }

    @override
    EditEventRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EditEventRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'event_id':
                    result.eventId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'name':
                    result.name = serializers.deserialize(value,
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
                case r'category_id':
                    result.categoryId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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
            }
        }
        return result.build();
    }
}

