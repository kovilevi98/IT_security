//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'search_request.g.dart';

abstract class SearchRequest implements Built<SearchRequest, SearchRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'value')
    String get value;

    SearchRequest._();

    static void _initializeBuilder(SearchRequestBuilder b) => b;

    factory SearchRequest([void updates(SearchRequestBuilder b)]) = _$SearchRequest;

    @BuiltValueSerializer(custom: true)
    static Serializer<SearchRequest> get serializer => _$SearchRequestSerializer();
}

class _$SearchRequestSerializer implements StructuredSerializer<SearchRequest> {

    @override
    final Iterable<Type> types = const [SearchRequest, _$SearchRequest];
    @override
    final String wireName = r'SearchRequest';

    @override
    Iterable<Object> serialize(Serializers serializers, SearchRequest object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.value != null) {
            result
                ..add(r'value')
                ..add(serializers.serialize(object.value,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    SearchRequest deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SearchRequestBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'value':
                    result.value = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

