import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/sposob_dostavki.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';
import 'package:flutter/material.dart';
import 'appBar.dart';

class ScanerDocument extends StatefulWidget {
  const ScanerDocument({Key? key}) : super(key: key);

  @override
  _ScanerDocumentState createState() => _ScanerDocumentState();
}

class _ScanerDocumentState extends State<ScanerDocument> {
  @override
  Widget build(BuildContext context) {
      Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: ServiceAppBar(
            title: "Заказать обычную карту",
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          height: size.height,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(25))),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Основная страница докумена. Разместив документ полностью сфотографируйте без бликов",
                style: TextStyle(color: blackTextColor, fontSize: 12),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset("assets/icons/zakazatKartu/document.svg"),
              const SizedBox(height: 20),
              const Text(
                "Страница с пропиской. Также разместив дакумент полностью сфотографируйте без бликов",
                style: TextStyle(color: blackTextColor, fontSize: 12),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset("assets/icons/zakazatKartu/propiska.svg"),
              const SizedBox(height: 20),
              const Text(
                "Сфотографируйтесь с документом на фронтальную камеру",
                style: TextStyle(color: blackTextColor, fontSize: 12),
              ),
              const SizedBox(height: 20),
              SvgPicture.asset("assets/icons/zakazatKartu/foto_person.svg"),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SposobDostavki()),
                  );
                },
                child: BorderGradient(
                  childBackColor: Colors.white,
                  color2: Color(0xffC5B2FF),
                  color1: Color(0xff568FFF),
                  borderWidth: 1,
                  borderRadius: 10,
                  child: Container(
                    alignment: Alignment.center,
                    height: 50,
                    child: Text(
                      "Далее",
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
