//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/generated/model/user_id_request.dart';

part 'coorganizer_request.g.dart';

abstract class CoorganizerRequest implements Built<CoorganizerRequest, CoorganizerRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'event_id')
    String get eventId;

    @nullable
    @BuiltValueField(wireName: r'user_ids')
    BuiltList<UserIdRequest> get userIds;

    CoorganizerRequest._();

    static void _initializeBuilder(CoorganizerRequestBuilder b) => b;

    factory CoorganizerRequest([void updates(CoorganizerRequestBuilder b)]) = _$CoorganizerRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<CoorganizerRequest> get serializer => _$CoorganizerRequestSerializer();
}

class _$CoorganizerRequestSerializer implements StructuredSerializer<CoorganizerRequest> {

    @override
    final Iterable<Type> types = const [CoorganizerRequest, _$CoorganizerRequest];
    @override
    final String wireName = r'CoorganizerRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, CoorganizerRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.eventId != null) {
            result
                ..add(r'event_id')
                ..add(serializers.serialize(object.eventId,
                    specifiedType: const FullType(String)));
        }
        if (object.userIds != null) {
            result
                ..add(r'user_ids')
                ..add(serializers.serialize(object.userIds,
                    specifiedType: const FullType(BuiltList, [FullType(UserIdRequest)])));
        }
        return result;
    }

    @override
    CoorganizerRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CoorganizerRequestBuilder();

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
                case r'user_ids':
                    result.userIds.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(UserIdRequest)])) as BuiltList<UserIdRequest>);
                    break;
            }
        }
        return result.build();
    }
}

