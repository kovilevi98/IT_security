import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http_parser/http_parser.dart';
import 'package:logger/logger.dart';
import 'package:mime_type/mime_type.dart';
import 'package:mobile/generated/api.dart';
import 'package:mobx/mobx.dart';
import 'package:mobile/generated/api_util.dart';
import 'package:mobile/global/multipart_request.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;

part 'upload_store.g.dart';

class UploadStore = Upload with _$UploadStore;

abstract class Upload with Store {
  var logger = Logger();
  @observable
  File? file;


  @action
  Future<bool> uploadData({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required String name,
  }) async {
    var uri = Uri.parse(
        "http://192.168.0.138:5000/api/Caff/upload");

    bool result = false;
    String errorMessage = tr("photoError");

    print(file.toString());
    print(file!.path);
    print('Original path: ${file!.path}');
    String dir = path.dirname(file!.path);
    String newPath = path.join(dir, name + ".caff");
    print('NewPath: ${newPath}');
    await file!.renameSync(newPath);

    file=File(newPath);

    for (int i = 0; i < 1; i++) {
      try {
        var request = MultipartRequest(
          'POST',
          uri,
          onProgress: (int bytes, int total) {},
        );

        request.headers["accept"] = "application/json";
        request.headers['Authorization'] = 'Bearer ${TokenClass().token}';
        request.headers['Content-Type'] = 'multipart/form-data';
        request.fields['name'] = "teszt";

        if(file != null) {
          request.files.add(
            await http.MultipartFile.fromPath(
              'caffFile',
              newPath,
              //contentType: new MediaType('application', 'caff'),
            ),
          );

        }
        request.addToTotal(await file!.length());

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
          errorMessage = jsonDecode(responseBody)['detail'].toString();
        }
      } catch (e) {
        logger.e(e);
        if (e.toString() == 'TIME_OUT') { // catch the thrown value to detect TIMEOUT
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