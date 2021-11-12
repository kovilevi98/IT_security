//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_id_response.g.dart';

abstract class EventIdResponse implements Built<EventIdResponse, EventIdResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'event_id')
    String get eventId;

    EventIdResponse._();

    static void _initializeBuilder(EventIdResponseBuilder b) => b;

    factory EventIdResponse([void updates(EventIdResponseBuilder b)]) = _$EventIdResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<EventIdResponse> get serializer => _$EventIdResponseSerializer();
}

class _$EventIdResponseSerializer implements StructuredSerializer<EventIdResponse> {

    @override
    final Iterable<Type> types = const [EventIdResponse, _$EventIdResponse];
    @override
    final String wireName = r'EventIdResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, EventIdResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.eventId != null) {
            result
                ..add(r'event_id')
                ..add(serializers.serialize(object.eventId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    EventIdResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EventIdResponseBuilder();

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
            }
        }
        return result.build();
    }
}

