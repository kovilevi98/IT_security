//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.7

// ignore_for_file: unused_import

import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../api_util.dart';

class TokenInterceptor extends Interceptor {
    Map<String, String> tokens = {};

  TokenInterceptor();

    @override
    void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
        options.headers['Authorization'] = 'Bearer ${TokenClass().token}';
        return super.onRequest(options, handler);
    }

}
