//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'caff_dto.g.dart';

abstract class CaffDto implements Built<CaffDto, CaffDtoBuilder> {

    @nullable
    @BuiltValueField(wireName: r'caffId')
    int get caffId;

    @nullable
    @BuiltValueField(wireName: r'caffName')
    String get caffName;

    @nullable
    @BuiltValueField(wireName: r'gifUrl')
    String get gifUrl;

    @nullable
    @BuiltValueField(wireName: r'caffUrl')
    String get caffUrl;

    @nullable
    @BuiltValueField(wireName: r'uploadedDate')
    DateTime get uploadedDate;

    @nullable
    @BuiltValueField(wireName: r'uploadedBy')
    String get uploadedBy;

    CaffDto._();

    static void _initializeBuilder(CaffDtoBuilder b) => b;

    factory CaffDto([void updates(CaffDtoBuilder b)]) = _$CaffDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<CaffDto> get serializer => _$CaffDtoSerializer();
}

class _$CaffDtoSerializer implements StructuredSerializer<CaffDto> {

    @override
    final Iterable<Type> types = const [CaffDto, _$CaffDto];
    @override
    final String wireName = r'CaffDto';

    @override
    Iterable<Object> serialize(Serializers serializers, CaffDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.caffId != null) {
            result
                ..add(r'caffId')
                ..add(serializers.serialize(object.caffId,
                    specifiedType: const FullType(int)));
        }
        if (object.caffName != null) {
            result
                ..add(r'caffName')
                ..add(serializers.serialize(object.caffName,
                    specifiedType: const FullType(String)));
        }
        if (object.gifUrl != null) {
            result
                ..add(r'gifUrl')
                ..add(serializers.serialize(object.gifUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.caffUrl != null) {
            result
                ..add(r'caffUrl')
                ..add(serializers.serialize(object.caffUrl,
                    specifiedType: const FullType(String)));
        }
        if (object.uploadedDate != null) {
            result
                ..add(r'uploadedDate')
                ..add(serializers.serialize(object.uploadedDate,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.uploadedBy != null) {
            result
                ..add(r'uploadedBy')
                ..add(serializers.serialize(object.uploadedBy,
                    specifiedType: const FullType(String)));
        }
        return result;
    }

    @override
    CaffDto deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CaffDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'caffId':
                    result.caffId = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'caffName':
                    result.caffName = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'gifUrl':
                    result.gifUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'caffUrl':
                    result.caffUrl = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'uploadedDate':
                    result.uploadedDate = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    break;
                case r'uploadedBy':
                    result.uploadedBy = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
            }
        }
        return result.build();
    }
}

