import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/viberit_dokument.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

class OrderSimpleCard extends StatefulWidget {
  const OrderSimpleCard({Key? key}) : super(key: key);

  @override
  _OrderSimpleCardState createState() => _OrderSimpleCardState();
}

class _OrderSimpleCardState extends State<OrderSimpleCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.only(top: 40),
            width: size.width,
            height: size.height * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [

                  containerWidget(size: size, img: "mastercard.png", title: "MasterCard",),
                  containerWidget(size: size, img: "humo.png", title: "HUMO"),
                  containerWidget(size: size, img: "visa.png", title: "Visa"),
                  containerWidget(size: size, img: "uzcard.png", title: "UzCard"),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget containerWidget({required Size size, required String img, required String title, }) {
    return Container(
      margin: EdgeInsets.all(5),
      width: size.width * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffC5B2FF))),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(5),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BorderGradient(
              childBackColor: Colors.white,
              color2: Color(0xffFFFFFF),
              color1: Colors.grey.withOpacity(0.3),
              borderWidth: 1,
              borderRadius: 5,
              child: Container(
                height: 25,
                width: 25,
                padding: EdgeInsets.all(5),
                child: Image.asset("assets/icons/zakazatKartu/" + img),
              ),
            ),
            Text(
              title,
              style: TextStyle(color: blackTextColor),
            ),
            const SizedBox()
          ],
        ),
        children: [
          Container(
            height: 1,
            color: blackTextColor.withOpacity(0.4),
          ),
          const SizedBox(height: 10,),
          Container(
            alignment: Alignment.topLeft,
            padding:const  EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                cardDefinition(),
                vibratButton(size),
                const SizedBox(height: 10,),
                Container(
                  height: 1,
                  color: blackTextColor.withOpacity(0.4),
                ),
                cardDefinition(),
                vibratButton(size),

              ],
            ),
          ),
        ],
      ),
    );
  }
  Widget cardDefinition(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "VISA Gold",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w700,
              fontSize: 15),
        ),
        const SizedBox(
          height: 5,
        ),
        const Text(
          "Условия по карте:",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Выпуск карты: 50 000 uzs",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
        const Text(
          "Доставка: 10 000 uzs",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
        const Text(
          "Обслуживание карты: 1 доллар США в месяц",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
        const Text(
          "Обработка транзакции: 0,1%",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
        const Text(
          "Страховой депозит: 100 доллоров США",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
        const Text(
          "Срок действия карты: 3 года",
          style: TextStyle(
              color: blackTextColor,
              fontWeight: FontWeight.w500,
              fontSize: 10),
        ),
      ],
    );
  }

  Widget vibratButton(Size size){
    return Center(
      child: TextButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChooseDocument()),
          );
        },
        child: Container(
          alignment: Alignment.center,
          height: size.height*0.05,
          width: size.width*0.7,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
                colors: [
                  Color(0xffC5B2FF),
                  Color(0xff7BA3F2)
                ]
            ),
          ),
          child: Text("Выбрать", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }

}
