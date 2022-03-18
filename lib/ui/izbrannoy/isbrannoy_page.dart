import 'package:flutter/material.dart';
import 'package:quant_flutter_new/data/model/lists.dart';
import 'package:quant_flutter_new/ui/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:quant_flutter_new/ui/widgets/end_drawer.dart';
import 'package:quant_flutter_new/ui/widgets/glassMorphism.dart';

class IzbrannoyPage extends StatefulWidget {
  const IzbrannoyPage({Key? key}) : super(key: key);

  @override
  _IzbrannoyPageState createState() => _IzbrannoyPageState();
}

class _IzbrannoyPageState extends State<IzbrannoyPage> {
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
            title: AppBarWidget(_scaffoldkey, title: "Избранные",),
          ),
          body: Stack(
            children: [
              Container(
                alignment: Alignment.center,
                child: ListView.builder(
                  itemCount: izbrannoyList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      child: GlassMorphism(
                        padding: 0,
                        margin: 5,
                        blur: 10,
                        opacity: 0.1,
                        borderRadius: 15,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                          height: 80,
                          width: size.width*0.6,
                          child: Row(
                            children: [
                              GlassMorphism(
                                  margin: 4,
                                  padding: 5,
                                  blur: 10,
                                  opacity: 0.1,
                                  borderRadius: 10,
                                  child: Image.asset(izbrannoyList[index].image)),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(izbrannoyList[index].poluchatel),
                                  Text(izbrannoyList[index].poluchatelInfo),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              Positioned(
                right: 0,
                top: size.height / 19,
                child: GestureDetector(
                  onTap: () {
                    _scaffoldkey.currentState!.openEndDrawer();
                  },
                  child: Container(
                    width: 14,
                    height: 68,
                    decoration: BoxDecoration(
                      color: const Color(0xFF7BA3F2),
                      border: Border.all(color: Colors.white),
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4.2),
                        bottomLeft: Radius.circular(4.2),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
