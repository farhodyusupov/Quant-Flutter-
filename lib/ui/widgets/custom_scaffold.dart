import 'package:flutter/material.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:quant_flutter_new/ui/widgets/end_drawer.dart';
class CustomScaffold extends StatelessWidget {
  final Widget? body;
  final AppBar? appBar;
  final CustomDrawer? endDrawer;
  final DrawerWidget ? drawer;
  final Stack? slidingUpPanel;
  const CustomScaffold({Key? key,this.drawer, this.body, this.appBar, this.endDrawer, this.slidingUpPanel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset : true,
      drawer: drawer,
      endDrawer: endDrawer,
      body: SingleChildScrollView(
        child: Container(
          height: size.height*0.872,
          decoration: BoxDecoration(
            gradient : LinearGradient(
                begin: Alignment(-0.24600639939308167,0.5632765293121338),
                end: Alignment(-0.6359114050865173,-0.6678419709205627),
                colors: [Color.fromRGBO(156, 218, 248, 1),Color.fromRGBO(201, 195, 250, 1)]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 50,
                child: appBar,
              ),
              const Spacer(),
              Center(child: body),
            ],
          ),
        ),
      ),
    );
  }
}
