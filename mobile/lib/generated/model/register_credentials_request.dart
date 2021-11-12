//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'register_credentials_request.g.dart';

abstract class RegisterCredentialsRequest implements Built<RegisterCredentialsRequest, RegisterCredentialsRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'first_name')
    String get firstName;

    @nullable
    @BuiltValueField(wireName: r'last_name')
    String get lastName;

    @nullable
    @BuiltValueField(wireName: r'password')
    String get password;

    @nullable
    @BuiltValueField(wireName: r'phone_number')
    String get phoneNumber;

    @nullable
    @BuiltValueField(wireName: r'newsletter')
    bool get newsletter;

    RegisterCredentialsRequest._();

    static void _initializeBuilder(RegisterCredentialsRequestBuilder b) => b;

    factory RegisterCredentialsRequest([void updates(RegisterCredentialsRequestBuilder b)]) = _$RegisterCredentialsRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<RegisterCredentialsRequest> get serializer => _$RegisterCredentialsRequestSerializer();
}

class _$RegisterCredentialsRequestSerializer implements StructuredSerializer<RegisterCredentialsRequest> {

    @override
    final Iterable<Type> types = const [RegisterCredentialsRequest, _$RegisterCredentialsRequest];
    @override
    final String wireName = r'RegisterCredentialsRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, RegisterCredentialsRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        if (object.firstName != null) {
            result
                ..add(r'first_name')
                ..add(serializers.serialize(object.firstName,
                    specifiedType: const FullType(String)));
        }
        if (object.lastName != null) {
            result
                ..add(r'last_name')
                ..add(serializers.serialize(object.lastName,
                    specifiedType: const FullType(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType(String)));
        }
        if (object.phoneNumber != null) {
            result
                ..add(r'phone_number')
                ..add(serializers.serialize(object.phoneNumber,
                    specifiedType: const FullType(String)));
        }
        if (object.newsletter != null) {
            result
                ..add(r'newsletter')
                ..add(serializers.serialize(object.newsletter,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    RegisterCredentialsRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RegisterCredentialsRequestBuilder();

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
                case r'first_name':
                    result.firstName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'last_name':
                    result.lastName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'password':
                    result.password = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'phone_number':
                    result.phoneNumber = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'newsletter':
                    result.newsletter = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
            }
        }
        return result.build();
    }
}

