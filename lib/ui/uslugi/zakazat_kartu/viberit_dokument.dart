import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/appBar.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/scaner_document.dart';
import 'package:quant_flutter_new/ui/widgets/container_glass.dart';
import 'package:quant_flutter_new/ui/widgets/glassMorphism.dart';

class ChooseDocument extends StatefulWidget {
  const ChooseDocument({Key? key}) : super(key: key);

  @override
  _ChooseDocumentState createState() => _ChooseDocumentState();
}

class _ChooseDocumentState extends State<ChooseDocument> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: ServiceAppBar(title: "Выберите тип дакумента",),
        ),
        body: Container(
          alignment: Alignment.center,
          width: size.width,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 40,),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ScanerDocument()),
                    );
                  },
                  child: ContainerGlass(
                    img: "assets/icons/zakazatKartu/card-receive.svg",
                    title: "title",
                    borderRadius: 10,
                    color: Colors.white,
                    text: "Паспорт",
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: ContainerGlass(
                    img: "assets/icons/zakazatKartu/card-receive.svg",
                    title: "title",
                    borderRadius: 10,
                    color: Colors.white,
                    text: "ID карта",
                  ),
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(0),
                    backgroundColor:
                    MaterialStateProperty.all(Colors.transparent),
                  ),
                  onPressed: () {},
                  child: const ContainerGlass(
                    img: "assets/icons/zakazatKartu/refresh.svg",
                    title: "title",
                    borderRadius: 10,
                    color: Colors.white,
                    text: "Водительское удостоверение ",
                  ),
                ),
                const SizedBox(height: 40,),
                Container(
                  width: size.width*0.9,
                    child: Text(
                    "Выберите тип дакумента для сканирования данный из вашего документа. Для сканирования вы можете сфотографировать свой дакумент или загрузить из галереи вашего телефона. "))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
