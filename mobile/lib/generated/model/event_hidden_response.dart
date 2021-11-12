//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_hidden_response.g.dart';

abstract class EventHiddenResponse implements Built<EventHiddenResponse, EventHiddenResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'organizer_name')
    String get organizerName;

    @nullable
    @BuiltValueField(wireName: r'event_status_name')
    String get eventStatusName;

    @nullable
    @BuiltValueField(wireName: r'cover_url')
    String get coverUrl;

    @nullable
    @BuiltValueField(wireName: r'start_in_unix')
    int get startInUnix;

    EventHiddenResponse._();

    static void _initializeBuilder(EventHiddenResponseBuilder b) => b;

    factory EventHiddenResponse([void updates(EventHiddenResponseBuilder b)]) = _$EventHiddenResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<EventHiddenResponse> get serializer => _$EventHiddenResponseSerializer();
}

class _$EventHiddenResponseSerializer implements StructuredSerializer<EventHiddenResponse> {

    @override
    final Iterable<Type> types = const [EventHiddenResponse, _$EventHiddenResponse];
    @override
    final String wireName = r'EventHiddenResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, EventHiddenResponse object,
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
        if (object.coverUrl != null) {
            result
                ..add(r'cover_url')
                ..add(serializers.serialize(object.coverUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.startInUnix != null) {
            result
                ..add(r'start_in_unix')
                ..add(serializers.serialize(object.startInUnix,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    EventHiddenResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EventHiddenResponseBuilder();

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
                case r'organizer_name':
                    result.organizerName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'event_status_name':
                    result.eventStatusName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'cover_url':
                    result.coverUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'start_in_unix':
                    result.startInUnix = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

