import 'package:flutter/cupertino.dart';
import 'package:mobile/global/global.dart';

class BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Opacity(
        opacity: Global.opacity,
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Global.mediumBlue,
                  Global.white,
                ]),
          ),
        ),
      ),
    ]);
  }
}
