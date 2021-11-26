import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProgressDialog extends StatelessWidget {
  final String msg;

  const ProgressDialog({Key? key, required this.msg}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      child: Dialog(
        child: Padding(
          padding: EdgeInsets.all(20.0.r),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 50.0.r,
                height: 50.0.r,
                child: CircularProgressIndicator(

                ),),
                SizedBox(width: 20.w,),
                Text(
                  msg,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
            ],
          ),
        ),
      ),
      onWillPop: () async => false,

    );
  }
}
