//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_response.g.dart';

abstract class EmailResponse implements Built<EmailResponse, EmailResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    EmailResponse._();

    static void _initializeBuilder(EmailResponseBuilder b) => b;

    factory EmailResponse([void updates(EmailResponseBuilder b)]) = _$EmailResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<EmailResponse> get serializer => _$EmailResponseSerializer();
}

class _$EmailResponseSerializer implements StructuredSerializer<EmailResponse> {

    @override
    final Iterable<Type> types = const [EmailResponse, _$EmailResponse];
    @override
    final String wireName = r'EmailResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, EmailResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.email != null) {
            result
                ..add(r'email')
                ..add(serializers.serialize(object.email,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    EmailResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EmailResponseBuilder();

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
            }
        }
        return result.build();
    }
}

