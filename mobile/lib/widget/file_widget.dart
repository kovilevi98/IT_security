import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/store/upload_store.dart';

class FileWidget extends StatelessWidget {
  final String title;
  final UploadStore store;
  const FileWidget({Key? key, required this.title, required this.store}) : super(key: key);

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
                      Text(title.length > 30
                          ? '${title.substring(0, 30)}...'
                          : title),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(right: 14.0.w),
              child: Builder(builder: (_) {
                return GestureDetector(
                  onTap: () {
                    //store.file = null;
                  },
                  child: Icon(FontAwesomeIcons.times,
                      size: 18.r, color: Colors.black),
                );
              }),
            ),
          ],
        )),
      ),
    );
  }

}
