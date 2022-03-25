import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/adress.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/appBar.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

class SposobDostavki extends StatelessWidget {
  const SposobDostavki({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: ServiceAppBar(
            title: "Способ доставки",
          ),
        ),
        body: Container(
alignment: Alignment.bottomCenter,

          child: Container(
            height: size.height*0.7,

            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
            child: Column(
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Adress()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xffC5B2FF),
                        )),
                    child: Row(
                      children: [
                        containerWidget("feet.png"),
                        const SizedBox(width: 20,),
                        Text("Заберу в банке", style: TextStyle(color: blackTextColor),),
                      ],

                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Adress()),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Color(0xffC5B2FF),
                        )),
                    child: Row(
                      children: [
                        containerWidget("dostavka.png"),
                        const SizedBox(width: 20,),
                        Text("Доставка", style: TextStyle(color: blackTextColor),),
                      ],

                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget containerWidget(String img) {
    return BorderGradient(
      color1: Colors.grey.withOpacity(0.1),
      color2: Colors.white,
      borderWidth: 3,
      childBackColor: Colors.white,
      borderRadius: 10,
      child: Container(
        height: 45,
        width: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              offset: Offset(0.5, 1),
              spreadRadius: 1,
              blurRadius: 1,
              color: Color(0xff979797).withOpacity(0.3),
            ),
            const BoxShadow(
                offset: Offset(-1, -1),
                spreadRadius: 1,
                blurRadius: 1,
                color: Color(0xffFBFBFB))
          ],
        ),
        child: Image.asset(
          "assets/icons/zakazatKartu/"+img,
        ),
      ),
    );
  }
}
