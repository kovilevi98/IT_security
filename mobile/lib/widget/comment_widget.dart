import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/store/main_store.dart';

class CommentWidget extends StatefulWidget {
  final MainStore mainStore;
  final int id1;
  final int id2;
  final int index;
  const CommentWidget({Key? key, required this.mainStore, required this.id1, required this.id2, required this.index}) : super(key: key);

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 3.0.h),
      child: Observer(builder: (_) {
        return SizedBox(
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
                              widget.mainStore.commentDtoPageResponse!
                                  .results[widget.index].commentText,
                              style: Theme
                                  .of(context)
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
                      if (widget.mainStore.loginStore.isAdmin) {
                        return GestureDetector(
                          onTap: () {
                            widget.mainStore.deleteComment(onSuccess: () async {
                              widget.mainStore.removeItem2(widget.mainStore.commentDtoPageResponse!
                                  .results[widget.index]);
                            },
                                onError: (message) {},
                                context: context,
                                id: widget.id1,
                                id2: widget.id2);
                          },
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
        );
      })
    );
  }
}
