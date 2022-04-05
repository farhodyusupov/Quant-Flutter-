import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/widgets/bottom_navigation_bar.dart';

import '../../home/home_widgets/clip_path_widget.dart';
import '../../widgets/border_gradient_widget.dart';
import 'appBar.dart';

class OplatitKartoy extends StatefulWidget {
  const OplatitKartoy({Key? key}) : super(key: key);

  @override
  State<OplatitKartoy> createState() => _OplatitKartoyState();
}

class _OplatitKartoyState extends State<OplatitKartoy> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: ServiceAppBar(title: "Оплатить картой"),
        ),
        body: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  padding: EdgeInsets.all(20),
                  height: size.height * 0.75,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/zakazatKartu/h.png"),
                          const SizedBox(width: 10),
                          Text(
                            "Qishloq Qurilish Bank",
                            style: TextStyle(color: blackTextColor),
                          )
                        ],
                      ),
                      Text("20 099 513.81 сум",
                          style: Theme.of(context).textTheme.headline5),
                      Text("8600 31** **** 7000" + "       09/23",
                          style: Theme.of(context).textTheme.headline6),
                      const SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '''Номер заявки на открытия:
Сумма:
Стоимлсть услуги:
Всего:''',
                            style: TextStyle(color: blackTextColor),
                          ),
                          Text(
                            '''33212345
15 000 UZS
75 UZS
15 075 UZS''',
                            style: TextStyle(color: blackTextColor),
                            textAlign: TextAlign.end,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (BuildContext context) {
                        return dialog();
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: size.height*0.06,
                    width: size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffC5B2FF),
                          Color(0xff7BA3F2)
                        ]
                      ),
                    ),
                    child: Text("Оплатить", style: TextStyle(color: Colors.white),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
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
                Image.asset("assets/icons/zakazatKartu/zayavka.png"),
                const SizedBox(height: 40,),
                Text(
                  '''Ваша заявка №33212345 в обработке. Вы получите уведомление о результате.''',
                  style: TextStyle(color: Colors.black, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>  BottomNavBar()),
                      );
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              colors: [
                                Color(0xffC5B2FF),
                                Color(0xff7BA3F2)
                              ]
                          )
                      ),
                      child: Text("OK", style: TextStyle(color: Colors.white),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
