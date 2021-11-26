//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_id_request.g.dart';

abstract class EventIdRequest implements Built<EventIdRequest, EventIdRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'event_id')
    String get eventId;

    EventIdRequest._();

    static void _initializeBuilder(EventIdRequestBuilder b) => b;

    factory EventIdRequest([void updates(EventIdRequestBuilder b)]) = _$EventIdRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<EventIdRequest> get serializer => _$EventIdRequestSerializer();
}

class _$EventIdRequestSerializer implements StructuredSerializer<EventIdRequest> {

    @override
    final Iterable<Type> types = const [EventIdRequest, _$EventIdRequest];
    @override
    final String wireName = r'EventIdRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, EventIdRequest object,
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
    EventIdRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EventIdRequestBuilder();

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

