//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/generated/model/user_response.dart';

part 'get_users_response.g.dart';

abstract class GetUsersResponse implements Built<GetUsersResponse, GetUsersResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<UserResponse> get users;

    GetUsersResponse._();

    static void _initializeBuilder(GetUsersResponseBuilder b) => b;

    factory GetUsersResponse([void updates(GetUsersResponseBuilder b)]) = _$GetUsersResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<GetUsersResponse> get serializer => _$GetUsersResponseSerializer();
}

class _$GetUsersResponseSerializer implements StructuredSerializer<GetUsersResponse> {

    @override
    final Iterable<Type> types = const [GetUsersResponse, _$GetUsersResponse];
    @override
    final String wireName = r'GetUsersResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, GetUsersResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.users != null) {
            result
                ..add(r'users')
                ..add(serializers.serialize(object.users,
                    specifiedType: const FullType(BuiltList, [FullType(UserResponse)])));
        }
        return result;
    }

    @override
    GetUsersResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = GetUsersResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'users':
                    result.users.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(UserResponse)])) as BuiltList<UserResponse>);
                    break;
            }
        }
        return result.build();
    }
}

