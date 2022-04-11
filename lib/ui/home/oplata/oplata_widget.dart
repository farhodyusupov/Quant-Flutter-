import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../bloc/home_bloc/home_bloc.dart';

class OplataWidget extends StatefulWidget {
  const OplataWidget({Key? key}) : super(key: key);

  @override
  _OplataWidgetState createState() => _OplataWidgetState();
}

class _OplataWidgetState extends State<OplataWidget> {
  List<String> operatorList = [
    "assets/icons/oplataIcons/beeline.png",
    "assets/icons/oplataIcons/mobiUz.png",
    "assets/icons/oplataIcons/ucell.png",
    "assets/icons/oplataIcons/uzmobile.png",
  ];
  List<String> providerList = [
    "assets/icons/oplataIcons/uzonline.png",
    "assets/icons/oplataIcons/tps.png",
    "assets/icons/oplataIcons/spectr.png",
    "assets/icons/oplataIcons/sola.png",
  ];
  double containerSize = 80;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height*0.8,
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            const SizedBox(
              height: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  BlocProvider.of<HomeBloc>(context).add(OplataWidgetEvent(widgetName: "transaksiya"));
                },
                child: Image.asset(
                  "assets/icons/oplataIcons/backButton.png",
                   // color: Colors.cyan,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Мобильные операторы",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Все",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            mobilniyOperator(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Интернет провайдеры ",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  "Все",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
            internetProvider()
          ],
        ),
      ),
    );
  }

  Widget mobilniyOperator() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: operatorList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {},
            child: Container(
              height: containerSize,
              width: containerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff7BA3F2).withOpacity(0.5),
                    Color(0xffC5B2FF).withOpacity(0.5),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(2),
                child: Image.asset(operatorList[index]),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget internetProvider() {
    return Container(
      height: 100,
      child: ListView.builder(
        itemCount: providerList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return TextButton(
            onPressed: () {},
            child: Container(
              height: containerSize,
              width: containerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(11),
                gradient: LinearGradient(
                  colors: [
                    Color(0xff7BA3F2).withOpacity(0.5),
                    Color(0xffC5B2FF).withOpacity(0.5),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                margin: EdgeInsets.all(2),
                child: Image.asset(providerList[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}
