//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';

import 'package:mobile/generated/model/login_response_dto.dart';
import 'package:mobile/generated/model/problem_details.dart';
import 'package:mobile/generated/model/registration_dto.dart';
import 'package:mobile/generated/model/sign_in_dto.dart';
import 'package:mobile/generated/model/validation_problem_details.dart';

class AuthApi {

  final Dio _dio;

  final Serializers _serializers;

  const AuthApi(this._dio, this._serializers);

  /// 
  ///
  /// 
  Future<Response<LoginResponseDto>> apiAuthLoginAdminPost({ 
    SignInDto signInDto,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'POST',
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

    const _type = FullType(SignInDto);
    _bodyData = _serializers.serialize(signInDto, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      r'/api/Auth/login/admin',
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(LoginResponseDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as LoginResponseDto;

    return Response<LoginResponseDto>(
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
  Future<Response<LoginResponseDto>> apiAuthLoginPost({ 
    SignInDto signInDto,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'POST',
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

    const _type = FullType(SignInDto);
    _bodyData = _serializers.serialize(signInDto, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      r'/api/Auth/login',
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(LoginResponseDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as LoginResponseDto;

    return Response<LoginResponseDto>(
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
  Future<Response<LoginResponseDto>> apiAuthRegisterPost({ 
    RegistrationDto registrationDto,
    CancelToken cancelToken,
    Map<String, dynamic> headers,
    Map<String, dynamic> extra,
    ValidateStatus validateStatus,
    ProgressCallback onSendProgress,
    ProgressCallback onReceiveProgress,
  }) async {
    final Options _options = Options(
      method: 'POST',
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

    const _type = FullType(RegistrationDto);
    _bodyData = _serializers.serialize(registrationDto, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      r'/api/Auth/register',
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(LoginResponseDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as LoginResponseDto;

    return Response<LoginResponseDto>(
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
