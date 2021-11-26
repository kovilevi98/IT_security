//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'sign_in_dto.g.dart';

abstract class SignInDto implements Built<SignInDto, SignInDtoBuilder> {

    @BuiltValueField(wireName: r'email')
    String get email;

    @BuiltValueField(wireName: r'password')
    String get password;

    SignInDto._();

    static void _initializeBuilder(SignInDtoBuilder b) => b;

    factory SignInDto([void updates(SignInDtoBuilder b)]) = _$SignInDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<SignInDto> get serializer => _$SignInDtoSerializer();
}

class _$SignInDtoSerializer implements StructuredSerializer<SignInDto> {

    @override
    final Iterable<Type> types = const [SignInDto, _$SignInDto];
    @override
    final String wireName = r'SignInDto';

    @override
    Iterable<Object> serialize(Serializers serializers, SignInDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    SignInDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SignInDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'email':
                    result.email = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'password':
                    result.password = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

