//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'error_message_response.g.dart';

abstract class ErrorMessageResponse implements Built<ErrorMessageResponse, ErrorMessageResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    ErrorMessageResponse._();

    static void _initializeBuilder(ErrorMessageResponseBuilder b) => b;

    factory ErrorMessageResponse([void updates(ErrorMessageResponseBuilder b)]) = _$ErrorMessageResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<ErrorMessageResponse> get serializer => _$ErrorMessageResponseSerializer();
}

class _$ErrorMessageResponseSerializer implements StructuredSerializer<ErrorMessageResponse> {

    @override
    final Iterable<Type> types = const [ErrorMessageResponse, _$ErrorMessageResponse];
    @override
    final String wireName = r'ErrorMessageResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, ErrorMessageResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.message != null) {
            result
                ..add(r'message')
                ..add(serializers.serialize(object.message,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    ErrorMessageResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ErrorMessageResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'message':
                    result.message = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

