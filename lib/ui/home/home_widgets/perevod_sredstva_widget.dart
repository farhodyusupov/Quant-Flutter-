import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/perevod_zavershen.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

import 'clip_path_widget.dart';

class PerevodSredstvaWidget extends StatefulWidget {
  final int poluchatel;
  final int summa;
  final String otpravitelCard;

  const PerevodSredstvaWidget(
      {Key? key,
      required this.poluchatel,
      required this.summa,
      required this.otpravitelCard})
      : super(key: key);

  @override
  _PerevodSredstvaWidgetState createState() => _PerevodSredstvaWidgetState();
}

class _PerevodSredstvaWidgetState extends State<PerevodSredstvaWidget> {
  TextEditingController commentaryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xff5E47D1).withOpacity(0.8),
            Color(0xffCA5C6A).withOpacity(0.9)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  }, icon: Image.asset("assets/icons/oplataIcons/backButton.png")),
                  Text("Перевод средств", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 60,)
                ],
              ),
              const SizedBox(height: 30,),
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  padding: EdgeInsets.all(25),
                  color: Colors.white,
                  width: size.width * 0.9,
                  height: size.height * 0.69,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/perevodIcons/humo.png"),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "Qishloq Qurilish Bank",
                            style: TextStyle(
                                color: blackTextColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 10),
                          )
                        ],
                      ),
                      const Center(
                        child: Text(
                          "20 099 513.81 сум",
                          style: TextStyle(
                              color: blackTextColor,
                              fontWeight: FontWeight.w700,
                              fontSize: 15),
                        ),
                      ),
                      Center(
                        child: Text(
                          widget.otpravitelCard,
                          style: const TextStyle(
                              color: blackTextColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 10),
                        ),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              text("Карта получателя:", 0.7),
                              text("Получатель:", 0.7),
                              text("Сумма:", 0.7),
                              text("Стоимлсть услуги:", 0.7),
                              text("Всего:", 0.7)
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(widget.poluchatel.toString()),
                              text("Ivan Fedorovich", 1),
                              text("15 000 UZS", 1),
                              text("75 UZS", 1),
                              text("15 075 UZS", 1),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Text(
                        "Оставить коментарий",
                        style: TextStyle(
                            color: blackTextColor,
                            fontSize: 10,
                            fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      BorderGradient(
                        childBackColor: Colors.white,
                        color2: Color(0xffC5B2FF),
                        color1: Color(0xff7BA3F2),
                        borderWidth: 1,
                        child: TextField(
                          controller: commentaryController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: '   Комментарий',
                            hintStyle: TextStyle(
                                color: blackTextColor.withOpacity(0.2),
                                fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Необязательно",
                        style: TextStyle(
                            color: blackTextColor.withOpacity(0.2), fontSize: 10),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextButton(
                onPressed: () {
                  showDialog<void>(
                    context: context,
                    barrierDismissible: false, // user must tap button!
                    builder: (BuildContext context) {
                      return PerevodZavershenWidget();
                    },
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          colors: [Color(0xffC5B2FF), Color(0xff7BA3F2)]),
                      borderRadius: BorderRadius.circular(8)),
                  child: Text(
                    "Перевести",
                    style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );
  }

  Widget text(String txt, double opacity) {
    return Container(
      alignment: Alignment.center,
      height: 20,
      child: Text(
        txt,
        style: TextStyle(
            color: blackTextColor.withOpacity(opacity),
            fontWeight: FontWeight.w600,
            fontSize: 12),
      ),
    );
  }
}
