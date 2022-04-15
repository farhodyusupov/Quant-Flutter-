import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/data/model/lists.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/Zakazat_kartu.dart';
import 'package:quant_flutter_new/ui/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:quant_flutter_new/ui/widgets/end_drawer.dart';

import '../widgets/custom_scaffold.dart';

class UslugiPage extends StatefulWidget {
  const UslugiPage({Key? key}) : super(key: key);

  @override
  _UslugiPageState createState() => _UslugiPageState();
}

class _UslugiPageState extends State<UslugiPage> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  List<Widget> widgetList = [
    OrderCardWidget(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var cont = -1;
    return Container(
      child: SafeArea(
        child: CustomScaffold(
          key: _scaffoldkey,
          endDrawer: CustomDrawer(
            size: size,
          ),
          drawer:  DrawerWidget(),
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
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              width: size.width,
              height: size.height * 0.7,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top:  Radius.circular(25) )
              ),
              child: SingleChildScrollView(
                child: Wrap(
                  spacing: 15,
                    runSpacing: 15,
                    direction: Axis.horizontal,
                    children: uslugiList.map((index) {
                      cont=cont+1;
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => widgetList[0]),
                          );
                        },
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          width: 110,
                          height: 150,
                          child: Stack(
                            children: [
                              Positioned(
                                top: 15,
                                child: BorderGradient(
                                  borderRadius: 20,
                                  childBackColor: Colors.white,
                                  color2: Colors.white,
                                  color1: Color(0xffC5B2FF),
                                  borderWidth: 2,
                                  child: Container(
                                    padding: EdgeInsets.only(bottom: 25),
                                    alignment: Alignment.bottomCenter,
                                    height: 122,
                                    width: 100,
                                    child: Text(uslugiList[cont].text, style: TextStyle(color: blackTextColor, fontSize: 12),textAlign: TextAlign.center,),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 25,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    BorderGradient(
                                        child: Container(
                                          height: 70,
                                          width: 50,
                                          child: Image.asset(
                                              "assets/icons/uslugiIcons/" +
                                                  uslugiList[cont].img),
                                        ),
                                        childBackColor: Colors.white,
                                        color2: Color(0xffC5B2FF),
                                        color1: Color(0xff7BA3F2),
                                        borderWidth: 1,
                                        borderRadius: 15)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    }).toList()),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
