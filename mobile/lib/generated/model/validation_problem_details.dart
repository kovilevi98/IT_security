//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'validation_problem_details.g.dart';

abstract class ValidationProblemDetails implements Built<ValidationProblemDetails, ValidationProblemDetailsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'status')
    int get status;

    @nullable
    @BuiltValueField(wireName: r'detail')
    String get detail;

    @nullable
    @BuiltValueField(wireName: r'instance')
    String get instance;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltMap<String, BuiltList<String>> get errors;

    ValidationProblemDetails._();

    static void _initializeBuilder(ValidationProblemDetailsBuilder b) => b;

    factory ValidationProblemDetails([void updates(ValidationProblemDetailsBuilder b)]) = _$ValidationProblemDetails;

    @BuiltValueSerializer(custom: true)
    static Serializer<ValidationProblemDetails> get serializer => _$ValidationProblemDetailsSerializer();
}

class _$ValidationProblemDetailsSerializer implements StructuredSerializer<ValidationProblemDetails> {

    @override
    final Iterable<Type> types = const [ValidationProblemDetails, _$ValidationProblemDetails];
    @override
    final String wireName = r'ValidationProblemDetails';

    @override
    Iterable<Object> serialize(Serializers serializers, ValidationProblemDetails object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object>[];
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(String)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.status != null) {
            result
                ..add(r'status')
                ..add(serializers.serialize(object.status,
                    specifiedType: const FullType(int)));
        }
        if (object.detail != null) {
            result
                ..add(r'detail')
                ..add(serializers.serialize(object.detail,
                    specifiedType: const FullType(String)));
        }
        if (object.instance != null) {
            result
                ..add(r'instance')
                ..add(serializers.serialize(object.instance,
                    specifiedType: const FullType(String)));
        }
        if (object.errors != null) {
            result
                ..add(r'errors')
                ..add(serializers.serialize(object.errors,
                    specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])])));
        }
        return result;
    }

    @override
    ValidationProblemDetails deserialize(Serializers serializers, Iterable<Object> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = ValidationProblemDetailsBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final dynamic value = iterator.current;
            switch (key) {
                case r'type':
                    result.type = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'title':
                    result.title = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'status':
                    result.status = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    break;
                case r'detail':
                    result.detail = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'instance':
                    result.instance = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    break;
                case r'errors':
                    result.errors.replace(serializers.deserialize(value,
                        specifiedType: const FullType(BuiltMap, [FullType(String), FullType(BuiltList, [FullType(String)])])) as BuiltMap<String, BuiltList<String>>);
                    break;
            }
        }
        return result.build();
    }
}

