import 'package:flutter/material.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/zakasat_virtual_card.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/zakazat_obichniy_kartu.dart';
import 'package:quant_flutter_new/ui/widgets/glassMorphism.dart';

class OrderCardWidget extends StatefulWidget {
  const OrderCardWidget({Key? key}) : super(key: key);

  @override
  _OrderCardWidgetState createState() => _OrderCardWidgetState();
}

class _OrderCardWidgetState extends State<OrderCardWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Заказать карту", ),
              IconButton(onPressed: (){}, icon: Image.asset("assets/icons/notification.png"))
            ],
          ),
        ),
          body: Container(
        child: ListView(
          padding: EdgeInsets.all(25),
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrderSimpleCard()),
                );
              },
              child: GlassMorphism(
                opacity: 0.1,
                blur: 10,
                borderRadius: 10,
                margin: 5,
                padding: 5,
                child: rowWidget(img: "assets/icons/zakazatKartu/card-receive.png", txt: "Заказать обычную карту", widget: OrderCardWidget()),
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ZakazatVirtualKartu()),
                );
              },
              child: GlassMorphism(
                opacity: 0.1,
                blur: 10,
                borderRadius: 10,
                margin: 5,
                padding: 5,
                child: rowWidget(img: "assets/icons/zakazatKartu/card-receive.png", txt: "Заказать вертуальную карту", widget: OrderCardWidget()),
              ),
            ),
            GlassMorphism(
              opacity: 0.1,
              blur: 10,
              borderRadius: 10,
              margin: 5,
              padding: 5,
              child: rowWidget(img: "assets/icons/zakazatKartu/Refresh.png", txt: "Перевыпуск карты", widget: OrderCardWidget()),
            )
          ],
        ),
      )),
    );
  }

  Widget rowWidget({required String img, required String txt, required Widget widget}) {
    return Row(
      children: [
        GlassMorphism(
          padding: 5,
          borderRadius: 5,
          margin: 2,
          opacity: 0.3,
          blur: 10,
          child: Image.asset(img),
        ),
        const SizedBox(width: 20,),
        Text(txt)
      ],
    );
  }
}
