import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:logger/logger.dart';
import 'package:mobile/generated/api.dart';
import 'package:mobile/generated/auth/add_token.dart';
import 'package:mobile/generated/model/add_comment_dto.dart';
import 'package:mobile/generated/model/caff_dto.dart';
import 'package:mobile/generated/model/caff_dto_page_response.dart';
import 'package:mobile/generated/model/comment_dto.dart';
import 'package:mobile/generated/model/comment_dto_page_response.dart';
import 'package:mobile/generated/model/update_caff_dto.dart';
import 'package:mobile/store/login_store.dart';
import 'package:mobx/mobx.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:path_provider/path_provider.dart';

part 'main_store.g.dart';

class MainStore = _MainStoreStore with _$MainStore;

abstract class _MainStoreStore with Store {
  var logger = Logger();
  LoginStore loginStore = LoginStore();

  @observable
  int selectedIndex = 0;

  @observable
  var list = ObservableList<CaffDto>();

  @observable
  var listComments = ObservableList<CommentDto>();

  @observable
  int total = 0;

  @observable
  int currentPage = 0;

  @observable
  CommentDtoPageResponse? commentDtoPageResponse;

// This is action method. You need to use this method to react
// your UI properly when something changes in your observable list.
  @action
  void addItem(CaffDto data) => list.add(data);

// the same for this method but with a different operation.
  @action
  void removeItem(CaffDto data) => list.remove(data);

  @action
  void addItem2(CommentDto data) => listComments.add(data);

// the same for this method but with a different operation.
  @action
  void removeItem2(CommentDto data) => listComments.remove(data);

  @action
  Future<void> getData({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    int? page,
    bool add=false,
    String? name,
  }) async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    page ??= 1;

    try {
      //DateTime.fromMillisecondsSinceEpoch(secondsSinceEpoch * 1000)
      Response<CaffDtoPageResponse> response;
      if(name == null || name.isEmpty){
        response =  await Openapi(
            interceptors: [
              TokenInterceptor(),
            ]
        ).getCaffApi().apiCaffGet(headers: headers, page: page);
      } else {
        response = await Openapi(
            interceptors: [
              TokenInterceptor(),
            ]
        ).getCaffApi().apiCaffGet(headers: headers, page: page, caffName: name);
      }

      logger.i("GetCaff was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        if(!add){
          list.clear();
        }

        for (int i = 0; i < response.data!.results.length; i++) {
          addItem(response.data!.results[i]);
        }
        total = response.data!.totalCount;
        currentPage = response.data!.currentPage;

        onSuccess();
        logger.i("successLogin");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> getById({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required int id,
  }) async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      //DateTime.fromMillisecondsSinceEpoch(secondsSinceEpoch * 1000)
      Response<CaffDto> response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdGet(id, headers: headers);

      logger.i("GetCaff was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        onSuccess();
        logger.i("GetCaff");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> downloadById({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required int id,
  }) async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      Response response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdDownloadGet(id, headers: headers);

      /*String localPath = (Platform.pathSeparator + 'Download');
      final savedDir = Directory(localPath);
      bool hasExisted = await savedDir.exists();
      if (!hasExisted) {
        savedDir.create();
      }

      final taskId = await FlutterDownloader.enqueue(
        url: "http://192.168.0.138:5000/api/caff/14/download",
        savedDir: 'test',
        showNotification: true, // show download progress in status bar (for Android)
        openFileFromNotification: true, // click on notification to open downloaded file (for Android)
      );*/

      logger.i("Download Caff was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        List<int> bytes = utf8.encode(response.data.toString());
        print(bytes);
        Uint8List input = Uint8List.fromList(bytes);
        ByteData bd = input.buffer.asByteData();
        Directory? directory = await getExternalStorageDirectory();
        directory = (await getExternalStorageDirectory())!;
        if (!await directory.exists()) {
          await directory.create(recursive: true);
        }
        writeToFile(bd, '${directory.path}/test.caff');
        print(directory.path);
        var x = await directory.listSync();
        onSuccess();
        logger.i("Download Caff");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> deleteById({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required int id,
  }) async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      logger.i("Delete Caff with id: " + id.toString());

      var response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdDelete(id, headers: headers);

      logger.i("DeleteCaff was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        onSuccess();
        logger.i("DeleteCaff");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> getCommentsById({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required int id,
  }) async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      //DateTime.fromMillisecondsSinceEpoch(secondsSinceEpoch * 1000)
      Response<CommentDtoPageResponse> response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdCommentGet(id, headers: headers);

      logger.i("GetCaff was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        commentDtoPageResponse = response.data!;
        listComments.clear();
        for(int i = 0; i < commentDtoPageResponse!.results.length; i++){
          addItem2(commentDtoPageResponse!.results[i]);
        }
        onSuccess();
        logger.i("GetCaff");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> uploadComment({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required int id,
    required String message,
  }) async {
    AddCommentDto request = AddCommentDto((builder) {
      builder.commentText = message;
    });

    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      Response<CommentDto> response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdCommentPost(
          id, addCommentDto: request, headers: headers);

      logger.i(
          "PostComment was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        onSuccess();
        logger.i("PostComment");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> renameCaff({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required int id,
    required String name,
  }) async {
    UpdateCaffDto request = UpdateCaffDto((builder) {
      builder.caffName = name;
    });

    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      Response<CaffDto> response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdPut(
          id, updateCaffDto:  request, headers: headers);

      logger.i(
          "PutCaff was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        onSuccess();
        logger.i("PutCaff");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  @action
  Future<void> deleteComment({
    required void Function() onSuccess,
    required void Function(String message) onError,
    required BuildContext context,
    required int id,
    required int id2,
  }) async {
    Map<String, String> headers = {
      HttpHeaders.acceptHeader: "application/json"
    };

    try {
      var response =
      await Openapi(
          interceptors: [
            TokenInterceptor(),
          ]
      ).getCaffApi().apiCaffCaffIdCommentCommentIdDeleteDelete(
          id, id2, headers: headers);

      logger.i(
          "DeleteComment was succesfull" + response.statusMessage.toString());

      if (response.statusCode.isSuccess()) {
        onSuccess();
        logger.i("DeleteComment");
      }
    } on DioError catch (error) {
      switch (error.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
          logger.e("Timeout: " + error.message);
          onError(tr("timeout"));
          break;
        case DioErrorType.response:
          logger.e("Login error: " + error.response!.data.toString() +
              error.response!.statusCode.toString());
          if (error.response!.statusCode == 400) {
            final body = json.decode(error.response!.data);
            final Map<dynamic, dynamic> data = body as Map<dynamic, dynamic>;
            final Map<dynamic, dynamic> errors = data['errors'] as Map<
                dynamic,
                dynamic>;
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

  Future<void> refreshComments({
    required BuildContext context,
    required int id,
  }) async {
    /*await getCommentsById(context: context,
        onError: (String message) {},
        onSuccess: () {},
        id: id);*/
  }

  Future<void> writeToFile(ByteData data, String path) {
    final buffer = data.buffer;
    return new File(path).writeAsBytes(
        buffer.asUint8List(data.offsetInBytes, data.lengthInBytes));
  }
}
