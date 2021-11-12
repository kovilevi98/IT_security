//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'event_hidden_response.dart';

part 'multiple_event_hidden_response.g.dart';

abstract class MultipleEventHiddenResponse implements Built<MultipleEventHiddenResponse, MultipleEventHiddenResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<EventHiddenResponse> get events;

    MultipleEventHiddenResponse._();

    static void _initializeBuilder(MultipleEventHiddenResponseBuilder b) => b;

    factory MultipleEventHiddenResponse([void updates(MultipleEventHiddenResponseBuilder b)]) = _$MultipleEventHiddenResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<MultipleEventHiddenResponse> get serializer => _$MultipleEventHiddenResponseSerializer();
}

class _$MultipleEventHiddenResponseSerializer implements StructuredSerializer<MultipleEventHiddenResponse> {

    @override
    final Iterable<Type> types = const [MultipleEventHiddenResponse, _$MultipleEventHiddenResponse];
    @override
    final String wireName = r'MultipleEventHiddenResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, MultipleEventHiddenResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.events != null) {
            result
                ..add(r'events')
                ..add(serializers.serialize(object.events,
                    specifiedType: const FullType(BuiltList, [FullType(EventHiddenResponse)])));
        }
        return result;
    }

    @override
    MultipleEventHiddenResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = MultipleEventHiddenResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'events':
                    result.events.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(EventHiddenResponse)])) as BuiltList<EventHiddenResponse>);
                    break;
            }
        }
        return result.build();
    }
}

