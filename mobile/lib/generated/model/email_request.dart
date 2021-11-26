//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'email_request.g.dart';

abstract class EmailRequest implements Built<EmailRequest, EmailRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    EmailRequest._();

    static void _initializeBuilder(EmailRequestBuilder b) => b;

    factory EmailRequest([void updates(EmailRequestBuilder b)]) = _$EmailRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<EmailRequest> get serializer => _$EmailRequestSerializer();
}

class _$EmailRequestSerializer implements StructuredSerializer<EmailRequest> {

    @override
    final Iterable<Type> types = const [EmailRequest, _$EmailRequest];
    @override
    final String wireName = r'EmailRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, EmailRequest object,
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
    EmailRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = EmailRequestBuilder();

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

