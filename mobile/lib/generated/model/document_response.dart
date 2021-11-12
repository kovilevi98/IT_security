//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'document_response.g.dart';

abstract class DocumentResponse implements Built<DocumentResponse, DocumentResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    DocumentResponse._();

    static void _initializeBuilder(DocumentResponseBuilder b) => b;

    factory DocumentResponse([void updates(DocumentResponseBuilder b)]) = _$DocumentResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<DocumentResponse> get serializer => _$DocumentResponseSerializer();
}

class _$DocumentResponseSerializer implements StructuredSerializer<DocumentResponse> {

    @override
    final Iterable<Type> types = const [DocumentResponse, _$DocumentResponse];
    @override
    final String wireName = r'DocumentResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, DocumentResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.content != null) {
            result
                ..add(r'content')
                ..add(serializers.serialize(object.content,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    DocumentResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = DocumentResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'content':
                    result.content = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

