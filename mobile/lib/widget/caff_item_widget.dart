import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/generated/model/caff_dto.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/main_store.dart';
import 'package:mobile/views/gif_details_view.dart';
import 'package:mobile/widget/progress_dialog_widget.dart';

import 'alertdialog.dart';

class CaffWidget extends StatelessWidget {
  final CaffDto caff;
  final bool deletable;
  final MainStore store;
  final int index;
  final BuildContext context;

  const CaffWidget(
      {Key? key,
      required this.deletable,
      required this.caff,
      required this.store,
      required this.index,
      required this.context})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () async {
          const ProgressDialog(
            msg: 'Loading...',
          );
          await store.getCommentsById(
              onSuccess: () {
                //Navigator.of(context).pop();
                Navigator.push<dynamic>(
                  context,
                  PageRouteBuilder<dynamic>(
                    pageBuilder: (_, __, ___) => GifDetailsView(
                      caff: caff,
                      store: store,
                    ),
                    transitionDuration: Duration(milliseconds: 600),
                  ),
                );
              },
              onError: (message) {},
              context: context,
              id: caff.caffId);
        },
        child: Column(
          children: [
            Stack(children: [
              Row(
                children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8.0.r),
                          topLeft: Radius.circular(8.0.r)),
                      child: Image.network(
                        caff.gifUrl,
                        fit: BoxFit.fill,
                        height: 100.h,
                        //width: 140.w,
                      ),
                    ),
                  ),
                ],
              ),
              (deletable)
                  ? Padding(
                      padding: EdgeInsets.fromLTRB(120.w, 5.h, 0, 0),
                      child: GestureDetector(
                        onTap: () async {
                          await store.deleteById(
                            onSuccess: () {
                              store.removeItem(caff);
                              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                                content: Text("Succesfull delete"),
                              ));
                            },
                            onError: (message) {
                              showAlertDialog(context, tr('error'), message);
                            },
                            id: caff.caffId,
                            context: context,
                          );
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
                    )
                  : const Text(""),
            ]),
            Padding(
              padding: EdgeInsets.all(12.0.r),
              child: Text(
                caff.caffName,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
