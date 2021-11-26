//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_id_request.g.dart';

abstract class UserIdRequest implements Built<UserIdRequest, UserIdRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'user_id')
    String get userId;

    UserIdRequest._();

    static void _initializeBuilder(UserIdRequestBuilder b) => b;

    factory UserIdRequest([void updates(UserIdRequestBuilder b)]) = _$UserIdRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserIdRequest> get serializer => _$UserIdRequestSerializer();
}

class _$UserIdRequestSerializer implements StructuredSerializer<UserIdRequest> {

    @override
    final Iterable<Type> types = const [UserIdRequest, _$UserIdRequest];
    @override
    final String wireName = r'UserIdRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, UserIdRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.userId != null) {
            result
                ..add(r'user_id')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserIdRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserIdRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'user_id':
                    result.userId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

