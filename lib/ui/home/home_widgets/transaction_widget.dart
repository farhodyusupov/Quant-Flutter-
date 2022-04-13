import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/clip_path_widget.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../data/model/lists.dart';
import '../my_home/my_homes_add.dart';

class TransactionWidget extends StatefulWidget {
  final ScrollController scrollController;

  const TransactionWidget({Key? key, required this.scrollController})
      : super(key: key);

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 0,
          width: size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
                alignment: Alignment.center,
                // height: 40,
                child: SvgPicture.asset(
                  "assets/icons/topButton.svg",
                  color: const Color(0xffEFF1FF),
                  height: 15,
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 25),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          child: ListView(
            children: [
              Container(
                child: ListView(
                  shrinkWrap: true,
                  controller: widget.scrollController,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "Транзакции",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color(0xff202020),
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            fontFamily: "Proxima",
                        ),
                      ),
                    ),
                    // const SizedBox(height: 1/0),
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        // controller: scrollController,
                        itemCount: transactions.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.only(bottom: 14),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Neumorphic(
                                      style: NeumorphicStyle(
                                          boxShape:
                                              NeumorphicBoxShape.roundRect(
                                                  BorderRadius.circular(10)),
                                          depth: 2),
                                      child: BorderGradient(
                                        borderRadius: 9,
                                        color2: Colors.white,
                                        color1: Color(0xffEEEEEE),
                                        childBackColor: Colors.white,
                                        borderWidth: 2,
                                        child: Container(
                                          child: Image.asset(
                                            transactions[index].image,
                                            height: 35,
                                            width: 35,
                                          ),
                                          height: 40,
                                          width: 40,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 14),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          transactions[index].paymentTo,
                                          style: const TextStyle(
                                              color: Color(0xff202020),
                                              fontSize: 13,
                                              fontFamily: "Proxima",
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(transactions[index].number,
                                            style: TextStyle(
                                                color: const Color(0xff202020)
                                                    .withOpacity(0.5),
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500,
                                                fontFamily: "Proxima"))
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  "-" +
                                      transactions[index].summ.toString() +
                                      " сум",
                                  style: const TextStyle(
                                      color: Color(0xff202020),
                                      fontSize: 11,
                                      fontFamily: "Proxima",
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),

                    /// scrolldan kegin chiqishi kerak
                    /// it must appear after scrolling
                    // positionIndex > 0.5?
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        myHome(),
                        const SizedBox(height: 15),
                        Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text(
                            "Предложения и лайфхаки",
                            style: TextStyle(
                                color: Color(0xff202020),
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          height: 150,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/backgrounds/perevod.png"),
                                        fit: BoxFit.fill)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            height: 40,
                                            child: const Text(
                                              "%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "за переводы",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        "между всеми HUMO",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10),
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Смотреть",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          const SizedBox(width: 10),
                                          SvgPicture.asset(
                                              "assets/icons/smotret.svg")
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/backgrounds/atm.png"),
                                        fit: BoxFit.fill)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        height: 50,
                                        child: Image.asset(
                                          "assets/icons/atm.png",
                                          width: 40,
                                          height: 40,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        "взять наличные",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                        textAlign: TextAlign.center,
                                      ),
                                      const Text(
                                        "без пластик карты",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10),
                                      ),
                                      const SizedBox(height: 15),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Смотреть",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          const SizedBox(width: 10),
                                          SvgPicture.asset(
                                              "assets/icons/smotret.svg")
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/backgrounds/yellov.png"),
                                        fit: BoxFit.fill)),
                                child: TextButton(
                                  onPressed: () {},
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "0",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 50,
                                                fontWeight: FontWeight.w800),
                                          ),
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            height: 40,
                                            child: const Text(
                                              "%",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 20),
                                            ),
                                          )
                                        ],
                                      ),
                                      const Text(
                                        "за переводы",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 13,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        "между всеми HUMO",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10),
                                      ),
                                      const SizedBox(height: 1),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Text(
                                            "Смотреть",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 12),
                                          ),
                                          const SizedBox(width: 10),
                                          SvgPicture.asset(
                                              "assets/icons/smotret.svg")
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 100)
                      ],
                    )
                    // : const SizedBox()
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  Widget myHome() {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffC5B2FF),
        minimumSize: Size(size.width, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MyHomeAdd()),
        );
      },
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/myHome.svg"),
          const SizedBox(width: 15),
          const Text(
            "My home",
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
