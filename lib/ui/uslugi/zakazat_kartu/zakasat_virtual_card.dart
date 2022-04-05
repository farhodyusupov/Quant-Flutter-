import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/appBar.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

import 'oplatit_kartoy.dart';

class ZakazatVirtualKartu extends StatefulWidget {
  const ZakazatVirtualKartu({Key? key}) : super(key: key);

  @override
  State<ZakazatVirtualKartu> createState() => _ZakazatVirtualKartuState();
}

class _ZakazatVirtualKartuState extends State<ZakazatVirtualKartu> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: ServiceAppBar(
            title: "Заказать вертуальную карту",
          ),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: ListView(
              children: [
                GestureDetector(
                  onTap: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return dialog();
                      },
                    );
                  },
                  child: cardWidget("MasterCard", "mastercard.png"),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: cardWidget("HUMO", "humo.png"),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {},
                  child: cardWidget("VISA", "visa.png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget cardWidget(String cardTypre, String img) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffC5B2FF))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              neomorfikContainer(img),
              Text(cardTypre, style: TextStyle(color: Colors.black)),
              const SizedBox(width: 50)
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Условия по карте:",
            style: TextStyle(
                color: blackTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 10,
          ),
          Text("Выпуск карты: Бесплатно", style: textStyle()),
          Text("Обслуживание карты: Бесплатно", style: textStyle()),
          Text("Обработка транзакции: Без комиссии", style: textStyle()),
          Text("Страховой депозит: Отсуствует", style: textStyle()),
          Text("Срок действия карты: 3 года", style: textStyle()),
          Text("Валюта карты: Евро", style: textStyle()),
        ],
      ),
    );
  }

  Widget neomorfikContainer(String img) {
    return Neumorphic(
      child: Container(
        height: 20,
        width: 20,
        child: Image.asset("assets/icons/zakazatKartu/" + img),
      ),
      padding: EdgeInsets.all(10),
      style: NeumorphicStyle(
          color: Colors.white,
          border: NeumorphicBorder(color: Color(0xff979797).withOpacity(0.1))),
    );
  }

  TextStyle textStyle() {
    return TextStyle(
        color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12);
  }

  Widget dialog() {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(23),
          color: Colors.white.withOpacity(0.1),
        ),
        child: AlertDialog(
          content: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(23),
              color: Colors.white.withOpacity(0.1),
            ),
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/icons/zakazatKartu/virtualCard.png"),
                Text(
                  '''Вертуальная VISA - это удобная карта без строхового депозита и без комиссии за любые международные онлайн-оплаты
Открытие - обсолютно бесплатно! Пополните карту на 15 000 UZS и сразу получите эти денги к себе на баланс.''',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: BorderGradient(
                          borderRadius: 10,
                          childBackColor: Colors.white,
                          borderWidth: 1,
                          color2: Color(0xffC5B2FF),
                          color1: Color(0xff568FFF),
                          child: Container(
                            alignment: Alignment.center,
                            height: 30,
                            child: Text("Отмена", style: TextStyle(color: blackTextColor.withOpacity(0.4)),),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  OplatitKartoy()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color(0xffC5B2FF),
                                Color(0xff7BA3F2)
                              ]
                            )
                          ),
                          child: Text("Продолжить", style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    )
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
