import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mobile/global/global.dart';
import 'package:mobile/store/main_store.dart';
import 'package:mobile/widget/background.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:easy_localization/easy_localization.dart';

import 'login.dart';

class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  _MainViewState createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final MainStore mainStore = MainStore();


  @override
  Widget build(BuildContext context) {
    return
      Observer(builder: (_) {
        return Scaffold(
          body: Stack(children: [
              BackgroundWidget(),
              Center(
                child: Text("body"),
              )
          ]),
        );
      });
  }


}
