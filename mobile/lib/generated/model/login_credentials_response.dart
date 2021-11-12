//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'event_hidden_response.dart';

part 'login_credentials_response.g.dart';

abstract class LoginCredentialsResponse implements Built<LoginCredentialsResponse, LoginCredentialsResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'bearer_token')
    String get bearerToken;

    @nullable
    @BuiltValueField(wireName: r'user_token')
    String get userToken;

    @nullable
    @BuiltValueField(wireName: r'user_points')
    int get userPoints;

    @nullable
    @BuiltValueField(wireName: r'recommended_events')
    BuiltList<EventHiddenResponse> get recommendedEvents;

    LoginCredentialsResponse._();

    static void _initializeBuilder(LoginCredentialsResponseBuilder b) => b;

    factory LoginCredentialsResponse([void updates(LoginCredentialsResponseBuilder b)]) = _$LoginCredentialsResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<LoginCredentialsResponse> get serializer => _$LoginCredentialsResponseSerializer();
}

class _$LoginCredentialsResponseSerializer implements StructuredSerializer<LoginCredentialsResponse> {

    @override
    final Iterable<Type> types = const [LoginCredentialsResponse, _$LoginCredentialsResponse];
    @override
    final String wireName = r'LoginCredentialsResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, LoginCredentialsResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.bearerToken != null) {
            result
                ..add(r'bearer_token')
                ..add(serializers.serialize(object.bearerToken,
                    specifiedType: const FullType(String)));
        }
        if (object.userToken != null) {
            result
                ..add(r'user_token')
                ..add(serializers.serialize(object.userToken,
                    specifiedType: const FullType(String)));
        }
        if (object.userPoints != null) {
            result
                ..add(r'user_points')
                ..add(serializers.serialize(object.userPoints,
                    specifiedType: const FullType(int)));
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
    LoginCredentialsResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = LoginCredentialsResponseBuilder();

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
                case r'user_token':
                    result.userToken = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'user_points':
                    result.userPoints = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
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

