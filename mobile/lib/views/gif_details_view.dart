import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/widget/background.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile/widget/comment_widget.dart';
import 'package:share/share.dart';

class GifDetailsView extends StatefulWidget {
  const GifDetailsView({Key? key}) : super(key: key);

  @override
  _GifDetailsViewState createState() => _GifDetailsViewState();
}

class _GifDetailsViewState extends State<GifDetailsView> {
  bool isAdmin = true;

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
              body: Container(
                //padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //SizedBox(height: 20.0.h,),
                      Container(
                        height: 220.h,
                        child: Stack(
                          children: [
                            Image.network(
                              Global.testGif,
                              fit: BoxFit.fill,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    Navigator.of(context).pop();
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 40.h),
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
                                            color: Color.fromARGB(64, 0, 0, 0),
                                            spreadRadius: 5, // changes position of shadow
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
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    (isAdmin) ? GestureDetector(
                                      onTap: (){
                                        //
                                        },
                                      child: Padding(
                                        padding: EdgeInsets.all(10.0.r),
                                        child: Container(
                                          height: 40.r,
                                          width: 40.r,
                                          padding: EdgeInsets.zero,
                                          decoration: BoxDecoration(
                                            color: Global.whiteWithOpacity2,
                                            shape: BoxShape.circle,
                                            boxShadow: const [
                                              BoxShadow(
                                                offset: Offset(2.0, 2.0),
                                                blurRadius: 4.0,
                                                color: Color.fromARGB(64, 0, 0, 0),
                                                spreadRadius: 5, // changes position of shadow
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
                                    ) : Text(""),
                                    GestureDetector(
                                      onTap: () {
                                        Share.share('check out my website https://example.com');
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.fromLTRB(
                                            0, 0, 30.0.w, 0),
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
                                                color: Color.fromARGB(64, 0, 0, 0),
                                                spreadRadius: 5, // changes position of shadow
                                              ),
                                            ],
                                          ),
                                          child: Icon(
                                            FontAwesomeIcons.shareAlt,
                                            size: 18.r,
                                            color: Global.blue,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
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
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Sample",
                                        style: Theme
                                            .of(context)
                                            .textTheme
                                            .bodyText1,
                                      ),
                                      SizedBox(
                                        height: 10.h,)
                                    ],
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
                                           //
                                          },
                                          child: Text(
                                            tr('comment'),
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ),
                                    ],),
                                  SizedBox(height: 20.h,),
                                  ListView.builder(
                                      padding: EdgeInsets.symmetric(vertical: 5.h),
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      //itemCount: widget.store.imageFile.length + 1,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return CommentWidget(deletable: isAdmin,);
                                      }),
                                  SizedBox(height: 40.h,),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
