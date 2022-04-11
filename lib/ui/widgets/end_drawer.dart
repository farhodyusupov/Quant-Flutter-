import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:glassmorphism/glassmorphism.dart';

class CustomDrawer extends StatelessWidget {
  final Size size;

  const CustomDrawer({Key? key, required this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double containerSize = 76;
    double fontSize = 10;
    double iconSize = 27;
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 3,sigmaX: 3),
      child: ClipRect(
        child: GlassmorphicContainer(
          alignment: Alignment.topRight,
          borderGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.1),
                Color(0xFFFFFFFF).withOpacity(0.5),
              ],
              stops: [
                0.1,
                1,
              ]),
          height: size.height,
          borderRadius: 0,
          linearGradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFffffff).withOpacity(0.2),
                Color(0xFFFFFFFF).withOpacity(0.75),
              ],
              stops: [
                0.1,
                1,
              ]),
          border: 1,
          blur: 3,
          width: size.width*0.85,

          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 24),

                  child: Row(
                    children:  [
                      const Text(
                        "Быстрый доступ",
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 15),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/h.svg",
                            width: 30,
                            height: 24,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Humo",
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 9, bottom: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/location.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Филиалы и банкоматы",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/k.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Курсы валют",
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/arrows.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Автоплатежи",
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          Image.asset("assets/drawerIcons/atm.png"),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Кредит калькулятор",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/chart.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Вклады",
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/card.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Управление картами",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/credit.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Кредиты",
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height / 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/clock.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Text(
                            "Предложения и лайфхаки",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: const Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: size.width / 5,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 14),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: Colors.white),
                      height: containerSize,
                      width: containerSize,
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            "assets/drawerIcons/home.svg",
                            width: iconSize,
                            height: iconSize,
                            color: Color(0xff7BA3F2),
                          ),
                          const SizedBox(
                            height: 9,
                          ),
                          Text(
                            "Мой дом",
                            style: TextStyle(
                                color: Color(0xff7BA3F2),
                                fontSize: fontSize,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
