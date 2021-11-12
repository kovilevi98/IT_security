import 'package:flutter/cupertino.dart';
import 'package:mobile/global/global.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TileContainerWidget extends StatelessWidget {
  final Widget child;

  const TileContainerWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: 130.w,
      decoration: BoxDecoration(
        color: Global.white,
        borderRadius: BorderRadius.circular(
            Global.buttonRadius),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          child,
        ],
      ),
    );
  }
}