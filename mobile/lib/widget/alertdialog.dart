import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/global/global.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


Future<void> showAlertDialog(BuildContext context, String title, String message) async {
  Widget okButton = TextButton(
    child: Text("OK", style: Theme.of(context).textTheme.button),
    onPressed: () {
      Navigator.pop(context);
      return ;
    },
  );

  AlertDialog alert = AlertDialog(
    title: Text(title, style: Theme.of(context).textTheme.button),
    content: Text(message),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog<dynamic>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Future<bool> showErrorDialog(BuildContext context, String title, String message) async {
  bool result = false;
  await Alert(
    context: context,
    image: Image.asset("assets/images/icon_warning.png", height: 60.0.h,),
    title: title,
    desc: message,
    style: AlertStyle(
      isCloseButton: false,
      descStyle: Theme.of(context).textTheme.subtitle1!,
    ),
    buttons: [
      DialogButton(
        child: Text(
          tr("back").allInCaps,
          style: TextStyle(color: Colors.white)
        ),
        onPressed: () => Navigator.pop(context),
        color: Global.mediumBlue,
        width: 120.w,
      ),
      DialogButton(
        child: Text(
          tr("continue"),
          style: TextStyle(color: Global.mediumBlue),
        ),
        onPressed: (){
          result = true;
          Navigator.pop(context);
        },
        width: 120.w,
        color: Colors.transparent,
      )
    ],
  ).show();

  return result;
}

Future<void> showAlertDialogAsync(BuildContext context, String title, String message) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title, style: Theme.of(context).textTheme.button),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: Text("OK", style: Theme.of(context).textTheme.button),
            onPressed: () {
              Navigator.pop(context);
              return;
            },
          ),
        ],
      );
    },
  );
}

extension CapExtension on String {
  String get inCaps => this.length > 0 ?'${this[0].toUpperCase()}${this.substring(1)}':'';
  String get allInCaps => this.toUpperCase();
  String get capitalizeFirstofEach => this.replaceAll(RegExp(' +'), ' ').split(" ").map((str) => str.inCaps).join(" ");
}