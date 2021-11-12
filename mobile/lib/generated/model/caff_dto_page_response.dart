//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'caff_dto.dart';

part 'caff_dto_page_response.g.dart';

abstract class CaffDtoPageResponse implements Built<CaffDtoPageResponse, CaffDtoPageResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<CaffDto> get results;

    @nullable
    @BuiltValueField(wireName: r'currentPage')
    int get currentPage;

    @nullable
    @BuiltValueField(wireName: r'totalCount')
    int get totalCount;

    CaffDtoPageResponse._();

    static void _initializeBuilder(CaffDtoPageResponseBuilder b) => b;

    factory CaffDtoPageResponse([void updates(CaffDtoPageResponseBuilder b)]) = _$CaffDtoPageResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<CaffDtoPageResponse> get serializer => _$CaffDtoPageResponseSerializer();
}

class _$CaffDtoPageResponseSerializer implements StructuredSerializer<CaffDtoPageResponse> {

    @override
    final Iterable<Type> types = const [CaffDtoPageResponse, _$CaffDtoPageResponse];
    @override
    final String wireName = r'CaffDtoPageResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, CaffDtoPageResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.results != null) {
            result
                ..add(r'results')
                ..add(serializers.serialize(object.results,
                    specifiedType: const FullType(BuiltList, [FullType(CaffDto)])));
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
    CaffDtoPageResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = CaffDtoPageResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(CaffDto)])) as BuiltList<CaffDto>);
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

