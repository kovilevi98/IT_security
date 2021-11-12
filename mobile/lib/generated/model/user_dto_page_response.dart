//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/generated/model/user_dto.dart';

part 'user_dto_page_response.g.dart';

abstract class UserDtoPageResponse implements Built<UserDtoPageResponse, UserDtoPageResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'results')
    BuiltList<UserDto> get results;

    @nullable
    @BuiltValueField(wireName: r'currentPage')
    int get currentPage;

    @nullable
    @BuiltValueField(wireName: r'totalCount')
    int get totalCount;

    UserDtoPageResponse._();

    static void _initializeBuilder(UserDtoPageResponseBuilder b) => b;

    factory UserDtoPageResponse([void updates(UserDtoPageResponseBuilder b)]) = _$UserDtoPageResponse;

    @BuiltValueSerializer(custom: true)
    static Serializer<UserDtoPageResponse> get serializer => _$UserDtoPageResponseSerializer();
}

class _$UserDtoPageResponseSerializer implements StructuredSerializer<UserDtoPageResponse> {

    @override
    final Iterable<Type> types = const [UserDtoPageResponse, _$UserDtoPageResponse];
    @override
    final String wireName = r'UserDtoPageResponse';

    @override
    Iterable<Object> serialize(Serializers serializers, UserDtoPageResponse object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.results != null) {
            result
                ..add(r'results')
                ..add(serializers.serialize(object.results,
                    specifiedType: const FullType(BuiltList, [FullType(UserDto)])));
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
    UserDtoPageResponse deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = UserDtoPageResponseBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'results':
                    result.results.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(UserDto)])) as BuiltList<UserDto>);
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

