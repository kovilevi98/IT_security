import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:logger/logger.dart';
import 'package:mime_type/mime_type.dart';
import 'package:mobile/generated/api.dart';
import 'package:mobile/generated/api_util.dart';
import 'package:mobile/global/multipart_request.dart';
import 'package:mobx/mobx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;

part 'create_store.g.dart';

class CreateStore = Create with _$CreateStore;

abstract class Create with Store {
  var logger = Logger();

  @observable
  File? imageFile;

  @observable
  TextEditingController addressTextFieldController = TextEditingController();

  @action
  Future<bool> uploadData({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
  }) async {
    var uri = Uri.parse(
        "http://win.milcomp.hu/api/set-cover");

    bool result = false;
    String errorMessage = tr("photoError");
    for (int i = 0; i < 1; i++) {
      try {
        var request = MultipartRequest(
          'POST',
          uri,
          onProgress: (int bytes, int total) {},
        );

        request.headers["accept"] = "application/json";
        request.headers['Authorization'] = 'Bearer ${TokenClass().token}';
        request.headers['Content-Type'] = ""; //'multipart/form-data';
        request.fields['name'] = "teszt";
        String mimeType = mime(imageFile!.path)!;
        String mimee = mimeType.split('/')[0];
        String type = mimeType.split('/')[1];
        request.files.add(
          await http.MultipartFile.fromPath(
            'file',
            imageFile!.path,
            contentType: MediaType(mimee, type),
          ),
        );
        request.addToTotal(await imageFile!.length());

        var response = await request.send().timeout(
          const Duration(seconds: 10),
          onTimeout: () {
            throw 'TIME_OUT'; // Throw anything
          },
        );
        var responseBody = await response.stream.bytesToString();

        if (response.statusCode.isSuccess()) {
          result = true;
          onSuccess();
          logger.i("thirdStep was succesfull" + responseBody.toString());
        } else {
          logger.e("Error at thirdStep upload: " + response.statusCode.toString() + responseBody.toString());
          errorMessage = jsonDecode(responseBody)['message'].toString();
        }
      } catch (_) {
        if (_.toString() == 'TIME_OUT') { // catch the thrown value to detect TIMEOUT
          logger.e("Timeout at thirdStep upload");
          errorMessage = tr("timeout");
        }
      }
    }

    if(!result){
      onError(errorMessage);
    }
    return result;
  }
}
