import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/widgets/bottom_navigation_bar.dart';

class PerevodZavershenWidget extends StatefulWidget {
  const PerevodZavershenWidget({Key? key}) : super(key: key);

  @override
  _PerevodZavershenWidgetState createState() => _PerevodZavershenWidgetState();
}

class _PerevodZavershenWidgetState extends State<PerevodZavershenWidget> {
  bool switchValue = false;
  bool isPodrobnoy = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white.withOpacity(0.2),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaY: 15, sigmaX: 15),
        child: AlertDialog(
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))),
          content: Container(
            width: size.width*0.9,
            child: SingleChildScrollView(
              child: isPodrobnoy?Column(

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Добавить в избранные",style:Theme.of(context).textTheme.bodyText1 ),
                      Switch(
                          value: switchValue,
                          onChanged: (value) {
                            setState(() {
                              switchValue = !switchValue;
                            });
                            print(switchValue);
                          })
                    ],
                  ),
                  Image.asset("assets/icons/perevodIcons/two_cards.png"),
                  const SizedBox(height: 25,),
                  Text("15 075 UZS",style:Theme.of(context).textTheme.bodyText1),
                  const SizedBox(height: 10,),
                  Text("Успешно",style:TextStyle(color: blackTextColor.withOpacity(0.6), fontSize: 10)),
                  TextButton(
                    onPressed: (){
                      setState(() {
                        isPodrobnoy = false;
                      });
                    },

                    child: Row(
                      children: [
                        Image.asset("assets/icons/perevodIcons/paper_podrobnoy.png"),
                        const SizedBox(width: 20,),
                        Text("Подробнее",style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12))
                      ],
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Row(
                        children: [
                          Image.asset("assets/icons/perevodIcons/soxranit_chek.png"),
                          const SizedBox(width: 20,),
                          Text("Сохранить чек в PDF",style:Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 12)),
                        ],
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => BottomNavBar()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                            colors: [Color(0xffC5B2FF), Color(0xff7BA3F2)]),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text("Домой", style:Theme.of(context).textTheme.headline6?.copyWith(fontSize: 20)),
                    ),
                  ),
                ],
              ):perevodPodrobnoy(size),
            ),
          ),
        ),
      ),
    );
  }

  Widget perevodPodrobnoy(Size size){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(child: Image.asset("assets/icons/perevodIcons/succes.png", height: 70,)),
        text("Имя отправителя","Ivan Ivanov"),
        text("Отправитель","8600 31** **** 7000"),
        text("Имя получателя","Ivan Fedorevich"),
        text("Получатель","Получатель"),
        text("Комиссия","0.75 UZS"),
        text("Общая сумма","15 075 UZS"),
        text("Дата транзакции","10.03.2022 10:39:36"),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            text("№ транзакции","343dshiho-hfffrughp-dufhgdp-999jp"),
            Column(
              children: [
                const SizedBox(height: 14,),
                Image.asset("assets/icons/perevodIcons/tranzaksi.png")
              ],
            ),
          ],
        ),
        const SizedBox(height: 10,),
        Center(
          child: TextButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BottomNavBar()),
              );
            },
            child: Container(
              alignment: Alignment.center,
              height: 45,
              width: size.width*0.6,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xffC5B2FF),
                    Color(0xff7BA3F2),
                  ]
                ),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text("Закрыть", style:Theme.of(context).textTheme.headline6?.copyWith(fontSize: 16)),
            ),
          ),
        )

      ],
    );
  }

  Widget text(String headerText, String bodyText) {
    return Container(
      padding: EdgeInsets.all(4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(headerText, style:  TextStyle(color: blackTextColor.withOpacity(0.6), fontSize: 10),),
          Text(bodyText, style: TextStyle(color: blackTextColor.withOpacity(1), fontSize: 13),),
        ],
      ),
    );
  }
}
