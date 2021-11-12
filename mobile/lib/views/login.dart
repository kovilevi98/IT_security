import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/login_store.dart';
import 'package:mobile/views/registration_view.dart';
import 'package:mobile/widget/background.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {
  final LoginStore _store = LoginStore();

  TextEditingController emailTextFieldController = TextEditingController();
  TextEditingController passTextFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: Stack(children: [
            BackgroundWidget(),
            Center(
              child: SingleChildScrollView(
                child: Observer(
                  builder: (_) => Container(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 1.w),
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
                              Icons.mail_outline,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextFormField(
                              textInputAction: TextInputAction.done,
                              controller: passTextFieldController,
                              onChanged: (_) =>
                              _store.password = passTextFieldController.text,
                              obscureText: !_store.isVisible,
                              textAlignVertical: TextAlignVertical.center,
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
                          ],
                        ),
                        SizedBox(height: 15.0.h),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                 /* Navigator.pushReplacement<dynamic, dynamic>(
                                    context,
                                    PageRouteBuilder<dynamic>(
                                      pageBuilder: (_, __, ___) => const MainView(),
                                      transitionDuration:
                                      Duration(milliseconds: 600),
                                    ),
                                  );*/
                                },
                                child: Text(
                                  tr('signIn'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 15.0.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push<dynamic>(
                                    context,
                                    PageRouteBuilder<dynamic>(
                                      pageBuilder: (_, __, ___) =>
                                          RegistrationView(),
                                      transitionDuration:
                                      Duration(milliseconds: 600),
                                    ),
                                  );
                                },
                                child: Text(
                                  tr("registration"),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            /*SizedBox(
                              width: 10.w,
                            ),
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push<dynamic>(
                                    context,
                                    PageRouteBuilder<dynamic>(
                                      pageBuilder: (_, __, ___) => ForgetPassView(),
                                      transitionDuration: Duration(milliseconds: 600),
                                    ),);
                                },
                                child: Text(
                                  tr('forgotPassword'),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),*/
                          ],
                        ),
                        SizedBox(height: 15.0.h),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ])),
    );
  }
}
