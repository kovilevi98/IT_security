//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'refresh_token_response.g.dart';

abstract class RefreshTokenResponse implements Built<RefreshTokenResponse, RefreshTokenResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'bearer_token')
    String get bearerToken;

    RefreshTokenResponse._();

    static void _initializeBuilder(RefreshTokenResponseBuilder b) => b;

    factory RefreshTokenResponse([void updates(RefreshTokenResponseBuilder b)]) = _$RefreshTokenResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<RefreshTokenResponse> get serializer => _$RefreshTokenResponseSerializer();
}

class _$RefreshTokenResponseSerializer implements StructuredSerializer<RefreshTokenResponse> {

    @override
    final Iterable<Type> types = const [RefreshTokenResponse, _$RefreshTokenResponse];
    @override
    final String wireName = r'RefreshTokenResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, RefreshTokenResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.bearerToken != null) {
            result
                ..add(r'bearer_token')
                ..add(serializers.serialize(object.bearerToken,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    RefreshTokenResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = RefreshTokenResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'bearer_token':
                    result.bearerToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

