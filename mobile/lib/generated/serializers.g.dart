// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.7

part of serializers;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(AddCommentDto.serializer)
      ..add(CaffDto.serializer)
      ..add(CaffDtoPageResponse.serializer)
      ..add(CommentDto.serializer)
      ..add(CommentDtoPageResponse.serializer)
      ..add(LoginResponseDto.serializer)
      ..add(OrderDirection.serializer)
      ..add(ProblemDetails.serializer)
      ..add(RegistrationDto.serializer)
      ..add(SignInDto.serializer)
      ..add(UpdateCaffDto.serializer)
      ..add(UpdateUserDto.serializer)
      ..add(UserDto.serializer)
      ..add(UserDtoPageResponse.serializer)
      ..add(ValidationProblemDetails.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CaffDto)]),
          () => new ListBuilder<CaffDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(CommentDto)]),
          () => new ListBuilder<CommentDto>())
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(UserDto)]),
          () => new ListBuilder<UserDto>())
      ..addBuilderFactory(
          const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(String)])
          ]),
          () => new MapBuilder<String, BuiltList<String>>()))
    .build();

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
