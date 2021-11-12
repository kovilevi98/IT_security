//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'comment_dto.g.dart';

abstract class CommentDto implements Built<CommentDto, CommentDtoBuilder> {

    @nullable
    @BuiltValueField(wireName: r'commentId')
    int get commentId;

    @nullable
    @BuiltValueField(wireName: r'commentText')
    String get commentText;

    @nullable
    @BuiltValueField(wireName: r'commentedBy')
    String get commentedBy;

    @nullable
    @BuiltValueField(wireName: r'commentedByUserId')
    int get commentedByUserId;

    CommentDto._();

    static void _initializeBuilder(CommentDtoBuilder b) => b;

    factory CommentDto([void updates(CommentDtoBuilder b)]) = _$CommentDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CommentDto> get serializer => _$CommentDtoSerializer();
}

class _$CommentDtoSerializer implements StructuredSerializer<CommentDto> {

    @override
    final Iterable<Type> types = const [CommentDto, _$CommentDto];
    @override
    final String wireName = r'CommentDto';

    @override
    Iterable<Object> serialize(Serializers serializers, CommentDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.commentId != null) {
            result
                ..add(r'commentId')
                ..add(serializers.serialize(object.commentId,
                    specifiedType: const FullType(int)));
        }
        if (object.commentText != null) {
            result
                ..add(r'commentText')
                ..add(serializers.serialize(object.commentText,
                    specifiedType: const FullType(String)));
        }
        if (object.commentedBy != null) {
            result
                ..add(r'commentedBy')
                ..add(serializers.serialize(object.commentedBy,
                    specifiedType: const FullType(String)));
        }
        if (object.commentedByUserId != null) {
            result
                ..add(r'commentedByUserId')
                ..add(serializers.serialize(object.commentedByUserId,
                    specifiedType: const FullType(int)));
        }
        return result;
    }

    @override
    CommentDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CommentDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'commentId':
                    result.commentId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'commentText':
                    result.commentText = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'commentedBy':
                    result.commentedBy = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'commentedByUserId':
                    result.commentedByUserId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
            }
        }
        return result.build();
    }
}

