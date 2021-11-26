//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'comment_dto.dart';

part 'comment_dto_page_response.g.dart';

abstract class CommentDtoPageResponse implements Built<CommentDtoPageResponse, CommentDtoPageResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<CommentDto> get results;

    @nullable
    @BuiltValueField(wireName: r'currentPage')
    int get currentPage;

    @nullable
    @BuiltValueField(wireName: r'totalCount')
    int get totalCount;

    CommentDtoPageResponse._();

    static void _initializeBuilder(CommentDtoPageResponseBuilder b) => b;

    factory CommentDtoPageResponse([void updates(CommentDtoPageResponseBuilder b)]) = _$CommentDtoPageResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<CommentDtoPageResponse> get serializer => _$CommentDtoPageResponseSerializer();
}

class _$CommentDtoPageResponseSerializer implements StructuredSerializer<CommentDtoPageResponse> {

    @override
    final Iterable<Type> types = const [CommentDtoPageResponse, _$CommentDtoPageResponse];
    @override
    final String wireName = r'CommentDtoPageResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, CommentDtoPageResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.results != null) {
            result
                ..add(r'results')
                ..add(serializers.serialize(object.results,
                    specifiedType: const FullType(BuiltList, [FullType(CommentDto)])));
        }
        if (object.currentPage != null) {
            result
                ..add(r'currentPage')
                ..add(serializers.serialize(object.currentPage,
                    specifiedType: const FullType(int)));
        }
        if (object.totalCount != null) {
            result
                ..add(r'totalCount')
                ..add(serializers.serialize(object.totalCount,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    CommentDtoPageResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CommentDtoPageResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CommentDto)])) as BuiltList<CommentDto>);
                    break;
                case r'currentPage':
                    result.currentPage = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'totalCount':
                    result.totalCount = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

