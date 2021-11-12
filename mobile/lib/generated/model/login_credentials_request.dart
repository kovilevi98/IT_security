//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_credentials_request.g.dart';

abstract class LoginCredentialsRequest implements Built<LoginCredentialsRequest, LoginCredentialsRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'password')
    String get password;

    @nullable
    @BuiltValueField(wireName: r'device_id')
    String get deviceId;

    @nullable
    @BuiltValueField(wireName: r'device_name')
    String get deviceName;

    @nullable
    @BuiltValueField(wireName: r'remember_me')
    bool get rememberMe;

    LoginCredentialsRequest._();

    static void _initializeBuilder(LoginCredentialsRequestBuilder b) => b;

    factory LoginCredentialsRequest([void updates(LoginCredentialsRequestBuilder b)]) = _$LoginCredentialsRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginCredentialsRequest> get serializer => _$LoginCredentialsRequestSerializer();
}

class _$LoginCredentialsRequestSerializer implements StructuredSerializer<LoginCredentialsRequest> {

    @override
    final Iterable<Type> types = const [LoginCredentialsRequest, _$LoginCredentialsRequest];
    @override
    final String wireName = r'LoginCredentialsRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, LoginCredentialsRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        if (object.password != null) {
            result
                ..add(r'password')
                ..add(serializers.serialize(object.password,
                    specifiedType: const FullType(String)));
        }
        if (object.deviceId != null) {
            result
                ..add(r'device_id')
                ..add(serializers.serialize(object.deviceId,
                    specifiedType: const FullType(String)));
        }
        if (object.deviceName != null) {
            result
                ..add(r'device_name')
                ..add(serializers.serialize(object.deviceName,
                    specifiedType: const FullType(String)));
        }
        if (object.rememberMe != null) {
            result
                ..add(r'remember_me')
                ..add(serializers.serialize(object.rememberMe,
                    specifiedType: const FullType(bool)));
        }
        return result;
    }

    @override
    LoginCredentialsRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginCredentialsRequestBuilder();

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
                case r'device_id':
                    result.deviceId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'device_name':
                    result.deviceName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'remember_me':
                    result.rememberMe = serializers.deserialize(value,
                        specifiedType: const FullType(bool)) as bool;
                    break;
            }
        }
        return result.build();
    }
}

