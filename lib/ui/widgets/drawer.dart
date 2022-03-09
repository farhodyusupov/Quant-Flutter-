import 'dart:ui';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:quant_flutter_new/bloc/home_bloc/home_bloc.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/widgets/select_theme.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  double imageSize = 30;
  double containerSize = 40;
  String dropdownValue = 'childCare';

  List<String> themeList=['childCare', 'flyingLemon', "blueTheme", 'purpleTheme'];

  // late final Box box;
  // _addInfo(int currentTheme) async {
  //   box.put('currnetTheme', currentTheme);
  // }
  //
  // _getInfo() {
  //   // Get info from people box
  // }
  //
  // _updateInfo() {
  //   // Update info of people box
  // }
  //
  // _deleteInfo() {
  //   // Delete info from people box
  // }
  // void initState() {
  //   super.initState();
  //   // Get reference to an already opened box
  //   box = Hive.box('peopleBox');
  // }
  //
  // @override
  // void dispose() {
  //   // Closes all Hive boxes
  //   Hive.close();
  //   super.dispose();
  // }



  @override
  Widget build(BuildContext context) {
    HomeBloc _bloc = BlocProvider.of<HomeBloc>(context);
    Size size = MediaQuery.of(context).size;
    return Drawer(
      backgroundColor: Colors.transparent,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 8.0),
        child: Container(
          padding: EdgeInsets.only(left: 20),
          width: size.width * 07,
          color: Colors.transparent,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 0),
                margin: EdgeInsets.only(left: 0),
                alignment: Alignment.centerLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: SvgPicture.asset("assets/icons/back.svg"),
                ),
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xff7BA3F2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.center,
                    width: 70,
                    height: 70,
                    child: const Icon(
                      Icons.person,
                      color: Colors.white,
                      size: 70,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Сергей Федерович",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "Пройти идентификатцию",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      width: containerSize,
                      height: containerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: drawerContainerColor,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/settings.svg",
                        height: imageSize,
                      ),
                    ),
                    const Text(
                      "Настройки",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
            
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SelectThemeWidget()),
                  );
                },
                child: Row(
                  children: [
                    Container(
                      width: containerSize,
                      height: containerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: drawerContainerColor,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/theme.svg",
                        height: imageSize,
                      ),
                    ),
                    const Text(
                      "Темы",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: containerSize,
                      height: containerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: drawerContainerColor,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/share.svg",
                        height: imageSize,
                      ),
                    ),
                    const Text(
                      "Поделиться",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Container(
                      width: containerSize,
                      height: containerSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: drawerContainerColor,
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/operator.svg",
                        height: imageSize,
                      ),
                    ),
                    Text(
                      "Служба поддержки",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
