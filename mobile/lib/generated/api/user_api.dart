//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:mobile/generated/model/order_direction.dart';
import 'package:mobile/generated/model/problem_details.dart';
import 'package:mobile/generated/model/update_user_dto.dart';
import 'package:mobile/generated/model/user_dto.dart';
import 'package:mobile/generated/model/user_dto_page_response.dart';
import 'package:mobile/generated/model/validation_problem_details.dart';

class UserApi {

  final Dio _dio;

  final Serializers _serializers;

  const UserApi(this._dio, this._serializers);

  /// 
  ///
  /// 
  Future<Response<UserDtoPageResponse>> apiUserGet({ 
    int pageSize,
    int page,
    String orderBy,
    OrderDirection orderDirection,
    String lastName,
    String firstName,
    String email,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },

      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      r'/api/User',
      queryParameters: <String, dynamic>{
        if (pageSize != null) r'PageSize': pageSize,
        if (page != null) r'Page': page,
        if (orderBy != null) r'OrderBy': orderBy,
        if (orderDirection != null) r'OrderDirection': orderDirection,
        if (lastName != null) r'LastName': lastName,
        if (firstName != null) r'FirstName': firstName,
        if (email != null) r'Email': email,
      },
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(UserDtoPageResponse);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as UserDtoPageResponse;

    return Response<UserDtoPageResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<void>> apiUserUserIdDelete(
    int userId, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'DELETE',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      r'/api/User/{userId}'.replaceAll('{' r'userId' '}', userId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

  /// 
  ///
  /// 
  Future<Response<UserDto>> apiUserUserIdGet(
    int userId, { 
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
    );

    dynamic _bodyData;

    final _response = await _dio.request<dynamic>(
      r'/api/User/{userId}'.replaceAll('{' r'userId' '}', userId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(UserDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as UserDto;

    return Response<UserDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// 
  ///
  /// 
  Future<Response<UserDto>> apiUserUserIdPut(
    int userId, { 
    UpdateUserDto updateUserDto,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'PUT',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
      contentType: 'application/json',
    );

    dynamic _bodyData;

    const _type = FullType(UpdateUserDto);
    _bodyData = _serializers.serialize(updateUserDto, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      r'/api/User/{userId}'.replaceAll('{' r'userId' '}', userId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(UserDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as UserDto;

    return Response<UserDto>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
