import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/views/gif_details_view.dart';

class CaffWidget extends StatelessWidget {
  final bool deletable;
  const CaffWidget({Key? key, required this.deletable}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return  Expanded(
      child: Card(
        child: GestureDetector(
          onTap: (){
            Navigator.push<dynamic>(
              context,
              PageRouteBuilder<dynamic>(
                pageBuilder: (_, __, ___) =>
                    GifDetailsView(),
                transitionDuration:
                Duration(milliseconds: 600),
              ),
            );
          },
          child: Column(
            children: [
              Stack(children: [
                Row(
                  children: [
                    Expanded(
                      child:
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topRight:
                            Radius.circular(8.0
                                .r),
                            topLeft: Radius
                                .circular(
                                8.0.r)),
                        child: Image
                            .network(
                          Global.testGif,
                          fit: BoxFit
                              .fill,
                          height: 100.h,
                          //width: 140.w,
                        ),
                      ),
                    ),
                  ],
                ),
                (deletable)? Padding(
                  padding: EdgeInsets.fromLTRB(120.w, 5.h, 0, 0),
                  child: GestureDetector(
                    onTap: () {
                      //
                    },
                    child: Container(
                      height: 30.r,
                      width: 30.r,
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
                        FontAwesomeIcons.trashAlt,
                        size: 18.r,
                        color: Global.blue,
                      ),
                    ),
                  ),
                ) : const Text(""),
              ]),
              Padding(
                padding: EdgeInsets.all(12.0.r),
                child: Text(
                  "Példa gif",
                  style:
                  Theme.of(context)
                      .textTheme
                      .subtitle1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
