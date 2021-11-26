//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_response_dto.g.dart';

abstract class LoginResponseDto implements Built<LoginResponseDto, LoginResponseDtoBuilder> {

    @nullable
    @BuiltValueField(wireName: r'userId')
    String get userId;

    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    @nullable
    @BuiltValueField(wireName: r'refreshToken')
    String get refreshToken;

    @nullable
    @BuiltValueField(wireName: r'userType')
    String get userType;

    LoginResponseDto._();

    static void _initializeBuilder(LoginResponseDtoBuilder b) => b;

    factory LoginResponseDto([void updates(LoginResponseDtoBuilder b)]) = _$LoginResponseDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginResponseDto> get serializer => _$LoginResponseDtoSerializer();
}

class _$LoginResponseDtoSerializer implements StructuredSerializer<LoginResponseDto> {

    @override
    final Iterable<Type> types = const [LoginResponseDto, _$LoginResponseDto];
    @override
    final String wireName = r'LoginResponseDto';

    @override
    Iterable<Object> serialize(Serializers serializers, LoginResponseDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.userId != null) {
            result
                ..add(r'userId')
                ..add(serializers.serialize(object.userId,
                    specifiedType: const FullType(String)));
        }
        if (object.token != null) {
            result
                ..add(r'token')
                ..add(serializers.serialize(object.token,
                    specifiedType: const FullType(String)));
        }
        if (object.refreshToken != null) {
            result
                ..add(r'refreshToken')
                ..add(serializers.serialize(object.refreshToken,
                    specifiedType: const FullType(String)));
        }
        if (object.userType != null) {
            result
                ..add(r'userType')
                ..add(serializers.serialize(object.userType,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    LoginResponseDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginResponseDtoBuilder();

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
                case r'token':
                    result.token = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'refreshToken':
                    result.refreshToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'userType':
                    result.userType = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

