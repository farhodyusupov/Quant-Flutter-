import 'package:flutter/material.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:quant_flutter_new/ui/widgets/end_drawer.dart';

class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final AppBar? appBar;
  final CustomDrawer? endDrawer;
  final DrawerWidget ? drawer;
  const CustomScaffold({Key? key,this.drawer, this.body, this.appBar, this.endDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: drawer,
      endDrawer: endDrawer,
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color(0xFF5E47D1),
                Color(0xFF7F54C2),
                Color(0xFF935CB9),
                Color(0xFFA062B3),
                Color(0xFFAD66AD),
                Color(0xFFBA6CA7),
                Color(0xFFC872A1),
                Color(0xFFD2759C),
                Color(0xFFE07B96),
              ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: size.height * 0.1,
              child: appBar,
            ),
            Container(
              // height:  size.height,
              child: body,
            ),
          ],
        ),
      ),
    );
  }
}
