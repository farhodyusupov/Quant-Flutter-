import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OplataWidget extends StatefulWidget {
  const OplataWidget({Key? key}) : super(key: key);

  @override
  _OplataWidgetState createState() => _OplataWidgetState();
}

class _OplataWidgetState extends State<OplataWidget> {
  double containerSize = 36;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: [
          const Text(
            "Отправитель",
            style:
                TextStyle(color: blackTextColor, fontWeight: FontWeight.w700),
          ),
          Row(
            children: [
              Container(
                height: containerSize,
                width: containerSize,
                decoration: BoxDecoration(
                    color: Colors.cyan, borderRadius: BorderRadius.circular(7)),
                child: Image.asset("assets/icons/humo_card-perevod.png"),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "20 099 513.81",
                              style: TextStyle(
                                  color: blackTextColor,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                            const Text(
                              "9860 31** **** 7000",
                              style: TextStyle(
                                  color: blackTextColor,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 10),
                            )
                          ],
                        ),
                        Image.asset("assets/icons/card_arrows.png")
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 250,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: containerSize,
                width: containerSize,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(7)),
                child: Image.asset("assets/icons/card_icon_perevod.png"),
              ),
              TextButton(
                onPressed: () {},
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Введите номер карты"),
                        Image.asset("assets/icons/poluchatel_card.png")
                      ],
                    ),
                    Container(
                      color: Colors.black,
                      height: 1,
                      width: 250,
                    ),
                  ],
                ),
              ),
            ],
          ),
          const Text(
            "Сумма перевода",
            style: TextStyle(
                color: blackTextColor,
                fontSize: 10,
                fontWeight: FontWeight.w600),
          ),
          Container(
            height: 50,
            width: 300,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Enter a search term',

              ),
            ),
          ),
          TextButton(
            onPressed: (){},
            child: Container(
              alignment: Alignment.center,
              width: size.width*0.85,
              height: 50,
              decoration: BoxDecoration(
                color: Color(0xffC5B2FF),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("Далее", style: TextStyle(color: Colors.white),),
            ),
          ),
        ],
      ),
    );
  }
}
