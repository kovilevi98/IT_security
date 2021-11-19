import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/generated/model/caff_dto.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/main_store.dart';
import 'package:mobile/widget/alertdialog.dart';
import 'package:mobile/widget/background.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/widget/comment_widget.dart';
import 'package:share/share.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class GifDetailsView extends StatefulWidget {
  final MainStore store;
  final CaffDto caff;

  const GifDetailsView({Key? key, required this.store, required this.caff})
      : super(key: key);

  @override
  _GifDetailsViewState createState() => _GifDetailsViewState();
}

class _GifDetailsViewState extends State<GifDetailsView> {
  TextEditingController nameTextFieldController = TextEditingController();

  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await FlutterDownloader.initialize(
        debug: true // optional: set false to disable printing logs to console
        );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () async => true,
        child: Stack(
          children: [
            BackgroundWidget(),
            Scaffold(
              extendBodyBehindAppBar: true,
              backgroundColor: Colors.transparent,
              body: SingleChildScrollView(
                child: Observer(builder: (_) {
                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //SizedBox(height: 20.0.h,),
                        Container(
                          height: 220.h,
                          child: Stack(
                            children: [
                              Center(
                                child: Image.network(
                                  widget.caff.gifUrl,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 30.0.w, vertical: 40.h),
                                      child: Container(
                                        height: 40.r,
                                        width: 40.r,
                                        decoration: BoxDecoration(
                                          color: Global.whiteWithOpacity2,
                                          shape: BoxShape.circle,
                                          boxShadow: const [
                                            BoxShadow(
                                              offset: Offset(2.0, 2.0),
                                              blurRadius: 4.0,
                                              color:
                                                  Color.fromARGB(64, 0, 0, 0),
                                              spreadRadius:
                                                  5, // changes position of shadow
                                            ),
                                          ],
                                        ),
                                        child: Icon(
                                          FontAwesomeIcons.chevronLeft,
                                          size: 16.r,
                                          color: Global.blue,
                                        ),
                                      ),
                                    ),
                                  ),
                                  FutureBuilder<void>(
                                    future: init(),
                                    builder: (BuildContext context,
                                        AsyncSnapshot<void> snapshot) {
                                      return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          (widget.store.loginStore.isAdmin)
                                              ? GestureDetector(
                                                  onTap: () {
                                                    //
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        EdgeInsets.all(10.0.r),
                                                    child: Container(
                                                      height: 40.r,
                                                      width: 40.r,
                                                      padding: EdgeInsets.zero,
                                                      decoration: BoxDecoration(
                                                        color: Global
                                                            .whiteWithOpacity2,
                                                        shape: BoxShape.circle,
                                                        boxShadow: const [
                                                          BoxShadow(
                                                            offset: Offset(
                                                                2.0, 2.0),
                                                            blurRadius: 4.0,
                                                            color:
                                                                Color.fromARGB(
                                                                    64,
                                                                    0,
                                                                    0,
                                                                    0),
                                                            spreadRadius:
                                                                5, // changes position of shadow
                                                          ),
                                                        ],
                                                      ),
                                                      child: Icon(
                                                        FontAwesomeIcons.pen,
                                                        size: 18.r,
                                                        color: Global.blue,
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              : Text(""),
                                          GestureDetector(
                                            onTap: () {
                                              widget.store.downloadById(
                                                id: widget.caff.caffId,
                                                onSuccess: () {
                                                  showAlertDialog(
                                                      context,
                                                      "Successful",
                                                      "The caff file successfully saved to your device");
                                                },
                                                onError: (message) {
                                                  showAlertDialog(context,
                                                      tr('error'), message);
                                                },
                                              );
                                            },
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  0, 0, 30.0.w, 0),
                                              child: Container(
                                                height: 40.r,
                                                width: 40.r,
                                                decoration: BoxDecoration(
                                                  color:
                                                      Global.whiteWithOpacity2,
                                                  shape: BoxShape.circle,
                                                  boxShadow: const [
                                                    BoxShadow(
                                                      offset: Offset(2.0, 2.0),
                                                      blurRadius: 4.0,
                                                      color: Color.fromARGB(
                                                          64, 0, 0, 0),
                                                      spreadRadius:
                                                          5, // changes position of shadow
                                                    ),
                                                  ],
                                                ),
                                                child: Icon(
                                                  FontAwesomeIcons.download,
                                                  size: 18.r,
                                                  color: Global.blue,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20.0.h,
                        ),
                        Container(
                          height: 525.h,
                          //               color: Colors.white,
                          padding: EdgeInsets.symmetric(horizontal: 18.0.w),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Card(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16.0.w, vertical: 18.0.h),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          widget.caff.caffName,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyText1,
                                        ),
                                        SizedBox(
                                          height: 10.h,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0.h,
                                ),
                                TextFormField(
                                  textInputAction: TextInputAction.next,
                                  controller: nameTextFieldController,
                                  //onChanged: (_) =>
                                  //_store.email = emailTextFieldController.text,
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          Global.inputRadius.r),
                                      borderSide: BorderSide(
                                          color: Global.whiteWithOpacity),
                                    ),
                                    hintText: "komment",
                                    prefixIcon: const Icon(
                                      FontAwesomeIcons.pen,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0.h,
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: ElevatedButton(
                                            onPressed: () {
                                              widget.store.uploadComment(
                                                  onSuccess: () async {
                                                    await widget.store
                                                        .getCommentsById(
                                                            onSuccess: () {
                                                              Navigator.of(
                                                                      context)
                                                                  .pop();
                                                              Navigator.push<
                                                                  dynamic>(
                                                                context,
                                                                PageRouteBuilder<
                                                                    dynamic>(
                                                                  pageBuilder: (_,
                                                                          __,
                                                                          ___) =>
                                                                      GifDetailsView(
                                                                    caff: widget
                                                                        .caff,
                                                                    store: widget
                                                                        .store,
                                                                  ),
                                                                  transitionDuration:
                                                                      Duration(
                                                                          milliseconds:
                                                                              600),
                                                                ),
                                                              );
                                                            },
                                                            onError: (message) {
                                                              showAlertDialog(
                                                                  context,
                                                                  tr('error'),
                                                                  message);
                                                            },
                                                            context: context,
                                                            id: widget
                                                                .caff.caffId);
                                                  },
                                                  onError: (message) {
                                                    showAlertDialog(context,
                                                        tr('error'), message);
                                                  },
                                                  context: context,
                                                  id: widget.caff.caffId,
                                                  message:
                                                      nameTextFieldController
                                                          .text);
                                            },
                                            child: Text(
                                              tr('comment'),
                                              textAlign: TextAlign.center,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    ListView.builder(
                                        padding:
                                            EdgeInsets.symmetric(vertical: 5.h),
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        itemCount:
                                            widget.store.listComments.length,
                                        itemBuilder: (context, index) {
                                          //print(widget.store.commentDtoPageResponse!.results[index].commentId);
                                          //return Text(widget.store.commentDtoPageResponse!.results.length.toString());
                                          return CommentWidget(
                                              mainStore: widget.store,
                                              id1: widget.caff.caffId,
                                              id2: widget
                                                  .store
                                                  .listComments[index]
                                                  .commentId,
                                              index: index);
                                        }),
                                    SizedBox(
                                      height: 40.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]);
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
