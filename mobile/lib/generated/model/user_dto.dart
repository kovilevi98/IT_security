//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_dto.g.dart';

abstract class UserDto implements Built<UserDto, UserDtoBuilder> {

    @nullable
    @BuiltValueField(wireName: r'userId')
    String get userId;

    @nullable
    @BuiltValueField(wireName: r'lastName')
    String get lastName;

    @nullable
    @BuiltValueField(wireName: r'firstName')
    String get firstName;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    UserDto._();

    static void _initializeBuilder(UserDtoBuilder b) => b;

    factory UserDto([void updates(UserDtoBuilder b)]) = _$UserDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserDto> get serializer => _$UserDtoSerializer();
}

class _$UserDtoSerializer implements StructuredSerializer<UserDto> {

    @override
    final Iterable<Type> types = const [UserDto, _$UserDto];
    @override
    final String wireName = r'UserDto';

    @override
    Iterable<Object> serialize(Serializers serializers, UserDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.userId != null) {
            result
                ..add(r'userId')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'lastName')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType(String)));
        }
        if (object.firstName != null) {
            result
                ..add(r'firstName')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType(String)));
        }
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    UserDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'userId':
                    result.userId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'lastName':
                    result.lastName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'firstName':
                    result.firstName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'email':
                    result.email = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

