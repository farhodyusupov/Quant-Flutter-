import 'package:flutter/material.dart';
import 'package:quant_flutter_new/ui/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:quant_flutter_new/ui/widgets/end_drawer.dart';

class UslugiPage extends StatefulWidget {
  const UslugiPage({Key? key}) : super(key: key);

  @override
  _UslugiPageState createState() => _UslugiPageState();
}

class _UslugiPageState extends State<UslugiPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: SafeArea(
        child: Scaffold(
          key: _scaffoldkey,
          endDrawer: CustomDrawer(
            size: size,
          ),
          drawer: const DrawerWidget(),
          appBar: AppBar(
            actions: const [SizedBox()],
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: AppBarWidget(
              _scaffoldkey,
              title: "Услуги",
            ),
          ),
          body: Container(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: size.width,
              height: size.height * 0.6,
              decoration: BoxDecoration(color: Colors.white),
              child: Wrap(
                children: [
                  Stack(
                    children: [
                      BorderGradient(
                        borderRadius: 20,
                        childBackColor: Colors.white,
                        color2: Colors.white,
                        color1: Color(0xffC5B2FF),
                        borderWidth: 2,
                        child: Container(
                          height: 122,
                          width: 80,
                          child: Text("hello"),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          BorderGradient(
                              child: Container(
                                height: 70,
                                width: 50,
                                child: Text("hello"),
                              ),
                              childBackColor: Colors.white,
                              color2: Color(0xffC5B2FF),
                              color1: Color(0xff7BA3F2),
                              borderWidth: 2,
                              borderRadius: 15)
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
