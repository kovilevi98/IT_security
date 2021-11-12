//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_request.g.dart';

abstract class DocumentRequest implements Built<DocumentRequest, DocumentRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    DocumentRequest._();

    static void _initializeBuilder(DocumentRequestBuilder b) => b;

    factory DocumentRequest([void updates(DocumentRequestBuilder b)]) = _$DocumentRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<DocumentRequest> get serializer => _$DocumentRequestSerializer();
}

class _$DocumentRequestSerializer implements StructuredSerializer<DocumentRequest> {

    @override
    final Iterable<Type> types = const [DocumentRequest, _$DocumentRequest];
    @override
    final String wireName = r'DocumentRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, DocumentRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.slug != null) {
            result
                ..add(r'slug')
                ..add(serializers.serialize(object.slug,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    DocumentRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DocumentRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'slug':
                    result.slug = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

