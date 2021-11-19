//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:mobile/generated/api_util.dart';
import 'package:mobile/generated/model/add_comment_dto.dart';
import 'package:mobile/generated/model/caff_dto.dart';
import 'package:mobile/generated/model/caff_dto_page_response.dart';
import 'package:mobile/generated/model/comment_dto.dart';
import 'package:mobile/generated/model/comment_dto_page_response.dart';
import 'package:mobile/generated/model/order_direction.dart';
import 'package:mobile/generated/model/problem_details.dart';
import 'package:mobile/generated/model/update_caff_dto.dart';
import 'package:mobile/generated/model/validation_problem_details.dart';

class CaffApi {

  final Dio _dio;

  final Serializers _serializers;

  const CaffApi(this._dio, this._serializers);

  /// 
  ///
  /// 
  Future<Response<void>> apiCaffCaffIdCommentCommentIdDeleteDelete(
    int caffId,
    int commentId, { 
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
      r'/api/Caff/{caffId}/comment/{commentId}/delete'.replaceAll('{' r'caffId' '}', caffId.toString()).replaceAll('{' r'commentId' '}', commentId.toString()),
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
  Future<Response<CommentDtoPageResponse>> apiCaffCaffIdCommentGet(
    int caffId, { 
    int pageSize,
    int page,
    String orderBy,
    OrderDirection orderDirection,
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
      r'/api/Caff/{caffId}/comment'.replaceAll('{' r'caffId' '}', caffId.toString()),
      queryParameters: <String, dynamic>{
        if (pageSize != null) r'PageSize': pageSize,
        if (page != null) r'Page': page,
        if (orderBy != null) r'OrderBy': orderBy,
        if (orderDirection != null) r'OrderDirection': orderDirection,
      },
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(CommentDtoPageResponse);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CommentDtoPageResponse;

    return Response<CommentDtoPageResponse>(
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
  Future<Response<CommentDto>> apiCaffCaffIdCommentPost(
    int caffId, { 
    AddCommentDto addCommentDto,
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

    const _type = FullType(AddCommentDto);
    _bodyData = _serializers.serialize(addCommentDto, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      r'/api/Caff/{caffId}/comment'.replaceAll('{' r'caffId' '}', caffId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(CommentDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CommentDto;

    return Response<CommentDto>(
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
  Future<Response<void>> apiCaffCaffIdDelete(
    int caffId, { 
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
      r'/api/Caff/{caffId}'.replaceAll('{' r'caffId' '}', caffId.toString()),
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
  Future<Response<CaffDto>> apiCaffCaffIdGet(
    int caffId, { 
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
      r'/api/Caff/{caffId}'.replaceAll('{' r'caffId' '}', caffId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(CaffDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CaffDto;

    return Response<CaffDto>(
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
  Future<Response<CaffDto>> apiCaffCaffIdPut(
      int caffId, {
        UpdateCaffDto updateCaffDto,
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

    const _type = FullType(UpdateCaffDto);
    _bodyData = _serializers.serialize(updateCaffDto, specifiedType: _type);

    final _response = await _dio.request<dynamic>(
      r'/api/Caff/{caffId}'.replaceAll('{' r'caffId' '}', caffId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(CaffDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CaffDto;

    return Response<CaffDto>(
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
  Future<Response<CaffDtoPageResponse>> apiCaffGet({
    int pageSize,
    int page,
    String orderBy,
    OrderDirection orderDirection,
    String caffName,
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
      r'/api/Caff',
      queryParameters: <String, dynamic>{
        if (pageSize != null) r'PageSize': pageSize,
        if (page != null) r'Page': page,
        if (orderBy != null) r'OrderBy': orderBy,
        if (orderDirection != null) r'OrderDirection': orderDirection,
        if (caffName != null) r'CaffName': caffName,
      },
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(CaffDtoPageResponse);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CaffDtoPageResponse;

    return Response<CaffDtoPageResponse>(
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
  Future<Response<CaffDto>> apiCaffUploadPost({ 
    String contentType,
    String contentDisposition,
    int length,
    String name,
    String fileName,
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
      contentType: 'multipart/form-data',

    );

    dynamic _bodyData;

    _bodyData = FormData.fromMap(<String, dynamic>{
      if (contentType != null) r'ContentType': encodeFormParameter(_serializers, contentType, const FullType(String)),
      if (contentDisposition != null) r'ContentDisposition': encodeFormParameter(_serializers, contentDisposition, const FullType(String)),
      if (length != null) r'Length': encodeFormParameter(_serializers, length, const FullType(int)),
      if (name != null) r'Name': encodeFormParameter(_serializers, name, const FullType(String)),
      if (fileName != null) r'FileName': encodeFormParameter(_serializers, fileName, const FullType(String)),
    });

    final _response = await _dio.request<dynamic>(
      r'/api/Caff/upload',
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    const _responseType = FullType(CaffDto);
    final _responseData = _serializers.deserialize(
      _response.data,
      specifiedType: _responseType,
    ) as CaffDto;

    return Response<CaffDto>(
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
  Future<Response<void>> apiCaffCaffIdDownloadGet(
      int caffId, {
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
      r'/api/Caff/{caffId}/download'.replaceAll('{' r'caffId' '}', caffId.toString()),
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

}


