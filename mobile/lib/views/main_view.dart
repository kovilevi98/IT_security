import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/main_store.dart';
import 'package:mobile/views/upload_file_view.dart';
import 'package:mobile/widget/background.dart';
import 'package:mobile/widget/caff_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final MainStore mainStore = MainStore();

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
                          Navigator.pushReplacement<dynamic, dynamic>(
                              context,
                              PageRouteBuilder<dynamic>(
                                pageBuilder: (_, __, ___) => const Login(),
                                transitionDuration:
                                    const Duration(milliseconds: 600),
                              ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.signOutAlt,
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.0.h),
                    child: Container(
                      width: 60.w,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push<dynamic>(
                              context,
                              PageRouteBuilder<dynamic>(
                                pageBuilder: (_, __, ___) => const UploadFileView(),
                                transitionDuration:
                                const Duration(milliseconds: 600),
                              ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              FontAwesomeIcons.plus,
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
              child: Center(
                child: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          //controller: emailTextFieldController,
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(Global.inputRadius.r),
                              borderSide: BorderSide(color: Global.whiteWithOpacity),
                            ),
                            hintText: tr('search'),
                            prefixIcon: const Icon(
                              Icons.search,
                            ),
                          ),
                        ),
                        ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: 6,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(vertical: 8.0.h),
                                child: Row(
                                  children: [
                                    CaffWidget(deletable: true,),
                                    SizedBox(width: 16.w,),
                                    CaffWidget(deletable: true,),
                                  ],
                                ),
                              );
                            }),
                      ],
                    ),
                  )
                ),
              ),
            ),
          )
        ]),
      );
    });
  }
}
