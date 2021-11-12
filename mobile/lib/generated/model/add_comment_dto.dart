//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'add_comment_dto.g.dart';

abstract class AddCommentDto implements Built<AddCommentDto, AddCommentDtoBuilder> {

    @BuiltValueField(wireName: r'commentText')
    String get commentText;

    AddCommentDto._();

    static void _initializeBuilder(AddCommentDtoBuilder b) => b;

    factory AddCommentDto([void updates(AddCommentDtoBuilder b)]) = _$AddCommentDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<AddCommentDto> get serializer => _$AddCommentDtoSerializer();
}

class _$AddCommentDtoSerializer implements StructuredSerializer<AddCommentDto> {

    @override
    final Iterable<Type> types = const [AddCommentDto, _$AddCommentDto];
    @override
    final String wireName = r'AddCommentDto';

    @override
    Iterable<Object> serialize(Serializers serializers, AddCommentDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'commentText')
            ..add(serializers.serialize(object.commentText,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    AddCommentDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = AddCommentDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'commentText':
                    result.commentText = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

