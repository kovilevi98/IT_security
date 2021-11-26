//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'verify_token_response.g.dart';

abstract class VerifyTokenResponse implements Built<VerifyTokenResponse, VerifyTokenResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    @nullable
    @BuiltValueField(wireName: r'valid_until_in_unix')
    int get validUntilInUnix;

    VerifyTokenResponse._();

    static void _initializeBuilder(VerifyTokenResponseBuilder b) => b;

    factory VerifyTokenResponse([void updates(VerifyTokenResponseBuilder b)]) = _$VerifyTokenResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<VerifyTokenResponse> get serializer => _$VerifyTokenResponseSerializer();
}

class _$VerifyTokenResponseSerializer implements StructuredSerializer<VerifyTokenResponse> {

    @override
    final Iterable<Type> types = const [VerifyTokenResponse, _$VerifyTokenResponse];
    @override
    final String wireName = r'VerifyTokenResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, VerifyTokenResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.token != null) {
            result
                ..add(r'token')
                ..add(serializers.serialize(object.token,
                    specifiedType: const FullType(String)));
        }
        if (object.validUntilInUnix != null) {
            result
                ..add(r'valid_until_in_unix')
                ..add(serializers.serialize(object.validUntilInUnix,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    VerifyTokenResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = VerifyTokenResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'token':
                    result.token = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'valid_until_in_unix':
                    result.validUntilInUnix = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

