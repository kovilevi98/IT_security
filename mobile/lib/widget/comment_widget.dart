import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommentWidget extends StatefulWidget {
  final bool deletable;
  const CommentWidget({Key? key, required this.deletable}) : super(key: key);

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0.h),
      child: Container(
        width: 315.w,
        height: 60.h,
        child: Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cool gif",
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1!
                                .copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(right: 14.0.w),
                  child: Builder(builder: (_) {
                    if(widget.deletable) {
                      return GestureDetector(
                        onTap: () => print("aplicant deleted"),
                        child: Icon(FontAwesomeIcons.times,
                            size: 18.r, color: Colors.black),
                      );
                    } else {
                      return const Text("");
                    }
                  }),
                ),
              ],
            )),
      ),
    );
  }
}
