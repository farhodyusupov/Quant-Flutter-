import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/home/my_home/add_services.dart';

import '../../widgets/custom_scaffold.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: CustomScaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Добавить дом",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          width: size.width,
          alignment: Alignment.bottomCenter,
          child: Container(
            height: size.height * 0.7,
            padding: EdgeInsets.only(top: 40, right: 20, left: 20, bottom: 40),
            width: size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // const SizedBox(height: 0,),
                Row(
                  children: [
                    Neumorphic(
                      style: const NeumorphicStyle(color: Colors.white),
                      child: Image.asset(
                        "assets/icons/my_home/home.png",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 20),
                      width: 200,
                      height: 20,
                      child: const TextField(
                        style: TextStyle(color: blackTextColor),
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: 'Назовите дом',
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const AddServiceMyHome()),
                    );
                  },
                  child: Container(
                    height: 40,
                    alignment: Alignment.center,
                    width: size.width,
                    decoration: BoxDecoration(
                        color: Color(0xffC5B2FF),
                        borderRadius: BorderRadius.circular(10)),
                    child: Text("Далее"),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
