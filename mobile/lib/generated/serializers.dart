//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'model/add_comment_dto.dart';
import 'model/caff_dto.dart';
import 'model/caff_dto_page_response.dart';
import 'model/comment_dto.dart';
import 'model/comment_dto_page_response.dart';
import 'model/login_response_dto.dart';
import 'model/order_direction.dart';
import 'model/problem_details.dart';
import 'model/registration_dto.dart';
import 'model/sign_in_dto.dart';
import 'model/update_user_dto.dart';
import 'model/user_dto.dart';
import 'model/user_dto_page_response.dart';
import 'model/validation_problem_details.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AddCommentDto,
  CaffDto,
  CaffDtoPageResponse,
  CommentDto,
  CommentDtoPageResponse,
  LoginResponseDto,
  OrderDirection,
  ProblemDetails,
  RegistrationDto,
  SignInDto,
  UpdateUserDto,
  UserDto,
  UserDtoPageResponse,
  ValidationProblemDetails,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
