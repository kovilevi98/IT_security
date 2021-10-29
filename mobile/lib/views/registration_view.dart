import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/registration_store.dart';
import 'package:mobile/widget/background.dart';

class RegistrationView extends StatefulWidget {
  @override
  _RegistrationViewState createState() => _RegistrationViewState();
}

class _RegistrationViewState extends State<RegistrationView> {
  final RegistrationStore _store = RegistrationStore();

  TextEditingController emailTextFieldController = TextEditingController();
  TextEditingController passTextFieldController = TextEditingController();
  TextEditingController phoneTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: WillPopScope(
        onWillPop: () async => true,
        child: Stack(children: [
          BackgroundWidget(),
          Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              toolbarHeight: 60.0.h,
              titleSpacing: 0.0,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              title: Padding(
                padding: EdgeInsets.symmetric(horizontal: 21.0.h),
                child: Container(
                  width: 120.w,
                  child: ElevatedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.arrow_back_ios,
                          size: 16.r,
                        ),
                        Text(
                          tr('back'),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            body: SafeArea(
              child: Center(
                child: SingleChildScrollView(
                  child: Observer(
                    builder: (_) => Container(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 45.w),
                            child: Image.asset(
                              Global.logo2Path,
                              fit: BoxFit.fill,
                            ),
                          ),
                          SizedBox(height: 50.0.h),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            controller: emailTextFieldController,
                            onChanged: (_) =>
                                _store.email = emailTextFieldController.text,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Global.inputRadius.r),
                                borderSide: BorderSide(color: Global.whiteWithOpacity),
                              ),
                              hintText: tr('email'),
                              prefixIcon: const Icon(
                                Icons.email,
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0.h),
                          TextFormField(
                            textInputAction: TextInputAction.next,
                            controller: passTextFieldController,
                            onChanged: (_) =>
                                _store.pass = passTextFieldController.text,
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: !_store.isVisible,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Global.inputRadius.r),
                                borderSide: BorderSide(color: Global.whiteWithOpacity),
                              ),
                              hintText: tr('password'),
                              prefixIcon: const Icon(
                                Icons.lock_outline,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {
                                  _store.isVisible = !_store.isVisible;
                                },
                                child: Icon(
                                  (_store.isVisible)
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20.0.h),
                          TextFormField(
                            textInputAction: TextInputAction.done,
                            controller: phoneTextFieldController,
                            onChanged: (_) =>
                                _store.phone = phoneTextFieldController.text,
                            textAlignVertical: TextAlignVertical.center,
                            obscureText: !_store.isVisible,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(Global.inputRadius.r),
                                borderSide: BorderSide(color: Global.whiteWithOpacity),
                              ),
                              hintText: tr('phone'),
                              prefixIcon: const Icon(
                                Icons.phone,
                              ),
                            ),
                          ),
                          SizedBox(height: 15.0.h),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () async {
                                    /*
                                        if (_store.confirm) {
                                          showDialog<void>(context: context,
                                              builder: (_) =>
                                                  ProgressDialog(
                                                      msg: tr("loading")));
                                          await _store.registration(
                                            onSuccess: () async {
                                              Navigator.of(context).pop();
                                              await showAlertDialogAsync(
                                                  context,
                                                  tr('sucsessfull'),
                                                  tr('registration_mail'));

                                              Navigator.pushReplacement<dynamic,
                                                  dynamic>(
                                                context,
                                                PageRouteBuilder<dynamic>(
                                                  pageBuilder: (_, __, ___) => Login(),
                                                  transitionDuration: Duration(milliseconds: 600),
                                                ),);

                                            },
                                            onError: (String message) {
                                              Navigator.of(context).pop();
                                              showAlertDialog(
                                                  context, tr('error'),
                                                  message);
                                              //Navigator.of(context).pop();
                                            },);
                                        } else {
                                          showAlertDialog(context, tr('error'),
                                              tr('confirmError'));
                                        }
                                      */
                                  },
                                  child: Text(
                                    tr('registration'),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      border: Border.all(width: 3.0),
      borderRadius: const BorderRadius.all(
          Radius.circular(5.0) //                 <--- border radius here
          ),
    );
  }
}
