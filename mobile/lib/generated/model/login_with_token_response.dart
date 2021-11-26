//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'event_hidden_response.dart';

part 'login_with_token_response.g.dart';

abstract class LoginWithTokenResponse implements Built<LoginWithTokenResponse, LoginWithTokenResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'bearer_token')
    String get bearerToken;

    @nullable
    @BuiltValueField(wireName: r'recommended_events')
    BuiltList<EventHiddenResponse> get recommendedEvents;

    LoginWithTokenResponse._();

    static void _initializeBuilder(LoginWithTokenResponseBuilder b) => b;

    factory LoginWithTokenResponse([void updates(LoginWithTokenResponseBuilder b)]) = _$LoginWithTokenResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginWithTokenResponse> get serializer => _$LoginWithTokenResponseSerializer();
}

class _$LoginWithTokenResponseSerializer implements StructuredSerializer<LoginWithTokenResponse> {

    @override
    final Iterable<Type> types = const [LoginWithTokenResponse, _$LoginWithTokenResponse];
    @override
    final String wireName = r'LoginWithTokenResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, LoginWithTokenResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.bearerToken != null) {
            result
                ..add(r'bearer_token')
                ..add(serializers.serialize(object.bearerToken,
                    specifiedType: const FullType(String)));
        }
        if (object.recommendedEvents != null) {
            result
                ..add(r'recommended_events')
                ..add(serializers.serialize(object.recommendedEvents,
                    specifiedType: const FullType(BuiltList, [FullType(EventHiddenResponse)])));
        }
        return result;
    }

    @override
    LoginWithTokenResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginWithTokenResponseBuilder();

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
                case r'recommended_events':
                    result.recommendedEvents.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(EventHiddenResponse)])) as BuiltList<EventHiddenResponse>);
                    break;
            }
        }
        return result.build();
    }
}

