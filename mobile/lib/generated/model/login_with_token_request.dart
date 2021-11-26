//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_with_token_request.g.dart';

abstract class LoginWithTokenRequest implements Built<LoginWithTokenRequest, LoginWithTokenRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'device_id')
    String get deviceId;

    @nullable
    @BuiltValueField(wireName: r'user_token')
    String get userToken;

    LoginWithTokenRequest._();

    static void _initializeBuilder(LoginWithTokenRequestBuilder b) => b;

    factory LoginWithTokenRequest([void updates(LoginWithTokenRequestBuilder b)]) = _$LoginWithTokenRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginWithTokenRequest> get serializer => _$LoginWithTokenRequestSerializer();
}

class _$LoginWithTokenRequestSerializer implements StructuredSerializer<LoginWithTokenRequest> {

    @override
    final Iterable<Type> types = const [LoginWithTokenRequest, _$LoginWithTokenRequest];
    @override
    final String wireName = r'LoginWithTokenRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, LoginWithTokenRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.deviceId != null) {
            result
                ..add(r'device_id')
                ..add(serializers.serialize(object.deviceId,
                    specifiedType: const FullType(String)));
        }
        if (object.userToken != null) {
            result
                ..add(r'user_token')
                ..add(serializers.serialize(object.userToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    LoginWithTokenRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginWithTokenRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'device_id':
                    result.deviceId = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'user_token':
                    result.userToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

