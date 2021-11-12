//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'registration_dto.g.dart';

abstract class RegistrationDto implements Built<RegistrationDto, RegistrationDtoBuilder> {

    @BuiltValueField(wireName: r'lastName')
    String get lastName;

    @BuiltValueField(wireName: r'firstName')
    String get firstName;

    @BuiltValueField(wireName: r'email')
    String get email;

    @BuiltValueField(wireName: r'password')
    String get password;

    @BuiltValueField(wireName: r'passwordAgain')
    String get passwordAgain;

    RegistrationDto._();

    static void _initializeBuilder(RegistrationDtoBuilder b) => b;

    factory RegistrationDto([void updates(RegistrationDtoBuilder b)]) = _$RegistrationDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<RegistrationDto> get serializer => _$RegistrationDtoSerializer();
}

class _$RegistrationDtoSerializer implements StructuredSerializer<RegistrationDto> {

    @override
    final Iterable<Type> types = const [RegistrationDto, _$RegistrationDto];
    @override
    final String wireName = r'RegistrationDto';

    @override
    Iterable<Object> serialize(Serializers serializers, RegistrationDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'lastName')
            ..add(serializers.serialize(object.lastName,
                specifiedType: const FullType(String)));
        result
            ..add(r'firstName')
            ..add(serializers.serialize(object.firstName,
                specifiedType: const FullType(String)));
        result
            ..add(r'email')
            ..add(serializers.serialize(object.email,
                specifiedType: const FullType(String)));
        result
            ..add(r'password')
            ..add(serializers.serialize(object.password,
                specifiedType: const FullType(String)));
        result
            ..add(r'passwordAgain')
            ..add(serializers.serialize(object.passwordAgain,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    RegistrationDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RegistrationDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
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
                case r'password':
                    result.password = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'passwordAgain':
                    result.passwordAgain = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

