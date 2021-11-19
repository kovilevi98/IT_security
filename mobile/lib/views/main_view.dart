import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/main_store.dart';
import 'package:mobile/views/upload_file_view.dart';
import 'package:mobile/widget/alertdialog.dart';
import 'package:mobile/widget/background.dart';
import 'package:mobile/widget/caff_item_widget.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'login.dart';

class MainView extends StatefulWidget {
  final MainStore store;

  const MainView({Key? key, required this.store}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  TextEditingController controller = TextEditingController();

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
                                pageBuilder: (_, __, ___) => UploadFileView(
                                  mainStore: widget.store,
                                ),
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
              child: Padding(
                  padding: EdgeInsets.all(15.0.r),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TypeAheadFormField(
                          textFieldConfiguration: TextFieldConfiguration(
                            textInputAction: TextInputAction.next,
                            controller: controller,
                            onChanged: (value) {
                              widget.store.getData(
                                  name: value,
                                  onSuccess: () {
                                    //
                                  },
                                  onError: (String message) =>
                                      showAlertDialog(
                                          context, tr('error'), message),
                                  context: context);
                            },
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(color: Colors.black),
                            decoration: InputDecoration(
                              fillColor: Global.white,
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25.r),
                                borderSide:
                                    BorderSide(color: Global.whiteWithOpacity),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(Global.inputRadius.r),
                                borderSide:
                                    const BorderSide(color: Global.white),
                              ),
                              hintText: tr('search'),
                              prefixIcon: const Icon(
                                Icons.search,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          onSuggestionSelected: (suggestion) {},
                          itemBuilder:
                              (BuildContext context, Object? itemData) {
                            return Container();
                          },
                          suggestionsCallback: (String pattern) async {
                            /*if(widget.store.name.length > 2){
      widget.store.isSearchStarted = true;
      await widget.store.searchUsers(
      onSuccess: () {}, onError: (message) {});
      widget.store.isSearchStarted = false;
      }
      if(widget.store.name.length <= 2){
      widget.store.users.clear();
      }*/
                            return [];
                          },
                          debounceDuration: const Duration(milliseconds: 500),
                          hideOnLoading: true,
                          hideOnEmpty: true,
                          hideOnError: true,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: (widget.store.total == 0) ?
                                Center(child: Text("No available items"))
                              : GridView.count(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                // crossAxisCount is the number of columns
                                crossAxisCount: 2,
                                // This creates two columns with two items in each column
                                children: List.generate(
                                    widget.store.list.length, (index) {
                                  return Padding(
                                    padding: EdgeInsets.all(5.0.r),
                                    child: Center(
                                      child: CaffWidget(
                                        deletable:
                                            widget.store.loginStore.isAdmin,
                                        caff: widget.store.list[index],
                                        store: widget.store,
                                        index: index,
                                        context: context,
                                      ),
                                    ),
                                  );
                                }),
                              ),
                            ),
                          ],
                        ),
                        (widget.store.total > widget.store.currentPage * 10)
                            ? ElevatedButton(
                                onPressed: () {
                                  widget.store.getData(
                                      page: widget.store.currentPage + 1,
                                      add: true,
                                      onSuccess: () {
                                        //
                                      },
                                      onError: (String message) =>
                                          showAlertDialog(
                                              context, tr('error'), message),
                                      context: context);
                                },
                                child: Text("Load more"),
                              )
                            : const SizedBox(
                                height: 5,
                              ),
                        SizedBox(
                          height: 30.h,
                        ),
                      ],
                    ),
                  )),
            ),
          )
        ]),
      );
    });
  }
}
