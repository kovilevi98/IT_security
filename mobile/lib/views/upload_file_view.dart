import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/upload_store.dart';
import 'package:mobile/widget/alertdialog.dart';
import 'package:mobile/widget/background.dart';
import 'package:mobile/widget/file_widget.dart';

class UploadFileView extends StatefulWidget {
  const UploadFileView({Key? key}) : super(key: key);

  @override
  State<UploadFileView> createState() => _UploadFileViewState();
}

class _UploadFileViewState extends State<UploadFileView> {
  TextEditingController nameTextFieldController = TextEditingController();
  UploadStore store = UploadStore();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        body: Stack(children: [
          BackgroundWidget(),
          Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 50.0.h,
              titleSpacing: 0.0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.0.h),
                    child: Container(
                      width: 60.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.arrowLeft,
                              size: 16.r,
                            ),
                            /*Text(
                                  tr('back'),
                                  textAlign: TextAlign.center,
                                ),*/
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            body: SafeArea(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 15.0.h, horizontal: 30.0.w),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.w),
                          child: Image.asset(
                            Global.logo2Path,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(height: 50.0.h),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          controller: nameTextFieldController,
                          //onChanged: (_) =>
                          //_store.email = emailTextFieldController.text,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(Global.inputRadius.r),
                              borderSide:
                                  BorderSide(color: Global.whiteWithOpacity),
                            ),
                            hintText: tr('name'),
                            prefixIcon: const Icon(
                              FontAwesomeIcons.pen,
                            ),
                          ),
                        ),
                        SizedBox(height: 15.0.h),
                        Observer(builder: (_) {
                          if(store.file == null){
                            return Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      _uploadFile();
                                    },
                                    child: Text(
                                      tr('chooseFile'),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          } else {
                            return Container(
                              height: 150.h,
                              child: Column(
                                children: [
                                  //Text(store.file!.path.substring(store.file!.path.lastIndexOf("/") + 1)),
                                  FileWidget(title: store.file!.path.substring(store.file!.path.lastIndexOf("/") + 1), store: store),
                                  SizedBox(height: 15.0.h),
                                  Row(
                                    children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () async {
                                          await store.uploadData(
                                            onSuccess: () {
                                              Navigator.of(context, rootNavigator: true).pop();
                                            },
                                            onError: (String message) {
                                              Navigator.of(context, rootNavigator: true).pop();
                                              showAlertDialogAsync(context, tr('error'), message);
                                            },
                                            context: context,);
                                        },
                                        child: Text(
                                          tr('upload'),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    ]
                                  ),
                                ],
                              ),
                            );
                          }
                        }),
                        SizedBox(height: 15.0.h),
                      ],
                    ),
                  )),
            ),
          )
        ]),
      );
    });
  }

  _uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      store.file = File(result.files.single.path!);
    } else {
      // User canceled the picker
    }
  }
}
