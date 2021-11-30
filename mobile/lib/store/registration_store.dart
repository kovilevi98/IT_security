import 'dart:convert';
import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:mobile/generated/api.dart';
import 'package:mobile/generated/model/login_response_dto.dart';
import 'package:mobile/generated/model/problem_details.dart';
import 'package:mobile/generated/model/registration_dto.dart';
import 'package:mobx/mobx.dart';
import 'package:easy_localization/easy_localization.dart';

part 'registration_store.g.dart';

class RegistrationStore = Registration with _$RegistrationStore;

abstract class Registration with Store {
  var logger = Logger();
  @observable
  String firstName = '';

  @observable
  String lastName = '';

  @observable
  String email = '';

  @observable
  String pass = '';

  @observable
  String passConfirm = '';

  @observable
  bool isVisible = false;

  @action
  Future<void> registration({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
  }) async {
    RegistrationDto request = RegistrationDto((builder) {
      builder.email = email;
      builder.password = pass;
      builder.lastName = lastName;
      builder.firstName = firstName;
      builder.passwordAgain = passConfirm;
    });


    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      //DateTime.fromMillisecondsSinceEpoch(secondsSinceEpoch * 1000)
      Response<LoginResponseDto> response =
      await Openapi().getAuthApi().apiAuthRegisterPost(registrationDto: request, headers: headers);

      if (response.statusCode.isSuccess()) {
      }
      onSuccess();
      logger.i("Registration");

    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() + error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<dynamic, dynamic>;
            String errorString = "";
            errors.forEach((dynamic key, dynamic value) {
              String t = value.toString();
              List<dynamic> list = value as List<dynamic>;
              list.forEach((dynamic element) {
                errorString += element.toString();
                errorString += "\n";
              });
            });
            logger.e("Error at login: " + error.response!.data.toString());
            onError(errorString);


            break;
          }

          onError(tr("basic_error"));
          break;
        case DioErrorType.cancel:
          break;
        case DioErrorType.other:
          onError(tr("basic_error"));
          break;
      }
    }
  }
}
