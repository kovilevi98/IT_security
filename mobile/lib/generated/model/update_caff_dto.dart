//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_caff_dto.g.dart';

abstract class UpdateCaffDto implements Built<UpdateCaffDto, UpdateCaffDtoBuilder> {

    @BuiltValueField(wireName: r'caffName')
    String get caffName;

    UpdateCaffDto._();

    static void _initializeBuilder(UpdateCaffDtoBuilder b) => b;

    factory UpdateCaffDto([void updates(UpdateCaffDtoBuilder b)]) = _$UpdateCaffDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<UpdateCaffDto> get serializer => _$UpdateCaffDtoSerializer();
}

class _$UpdateCaffDtoSerializer implements StructuredSerializer<UpdateCaffDto> {

    @override
    final Iterable<Type> types = const [UpdateCaffDto, _$UpdateCaffDto];
    @override
    final String wireName = r'UpdateCaffDto';

    @override
    Iterable<Object> serialize(Serializers serializers, UpdateCaffDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        result
            ..add(r'caffName')
            ..add(serializers.serialize(object.caffName,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    UpdateCaffDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UpdateCaffDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'caffName':
                    result.caffName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

