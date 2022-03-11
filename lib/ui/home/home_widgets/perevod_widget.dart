import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/perevod_sredstva_widget.dart';

class PerevodWidget extends StatefulWidget {
  const PerevodWidget({Key? key}) : super(key: key);

  @override
  _PerevodWidgetState createState() => _PerevodWidgetState();
}

class _PerevodWidgetState extends State<PerevodWidget> {
  List<String> iconList = [
    "assets/icons/perevodIcons/agrobank.png",
    "assets/icons/perevodIcons/hamkorbank.png",
    "assets/icons/perevodIcons/infinBank.png",
    "assets/icons/perevodIcons/qqb.png",
  ];
  List<String> bankList = [
    "Agrobank",
    "Hamkorbank",
    "InfinBank",
    "Qishloq Qurilish Bank"
  ];

  double containerSize = 40;
  bool switchWalue = false;
  bool isChecked = false;
  String otpravitelCard = "8600 31** **** 7000";
  TextEditingController poluchatelController = TextEditingController();
  TextEditingController summaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Отправитель",
            style: TextStyle(
                color: blackTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 14),
          ),
          Row(
            children: [
              Container(
                height: containerSize,
                width: containerSize,
                decoration: BoxDecoration(
                    color: Color(0xff42526E),
                    borderRadius: BorderRadius.circular(7)),
                child: Image.asset("assets/icons/humo_card-perevod.png"),
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    switchWalue= false;
                    isChecked = false;
                  });
                  showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>perevodDialog()
                  );
                },
                child: Container(
                  width: size.width * 0.6,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "20 099 513.81",
                                style: TextStyle(
                                    color: blackTextColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w700),
                              ),
                              Text(
                                "9860 31** **** 7000",
                                style: TextStyle(
                                    color: blackTextColor,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 13),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 8),
                            child: Image.asset("assets/icons/card_arrows.png"),
                          )
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
              ),
            ],
          ),
          const SizedBox(
            height: 10,
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
              const SizedBox(width: 10,),
              Container(
                height: containerSize,
                width: size.width*0.6,
                child: TextField(
                  controller: poluchatelController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: blackTextColor.withOpacity(0.5))
                    ),
                    hintText: 'Введите номер карты',
                    suffixIcon: IconButton(
                      onPressed: (){},
                      icon: Container(margin:EdgeInsets.only(left:10),child: Image.asset("assets/icons/perevodIcons/scan.png")),
                    )
                  ),
                  
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Сумма перевода",
            style: TextStyle(
                color: blackTextColor,
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            height: 50,
            width: size.width*0.73,
            child: TextField(
              controller: summaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                hintText: 'Введите сумму',
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          const Text(
            "Последнии переводы",
            style: TextStyle(
                color: blackTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 14),
          ),
          Container(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: iconList.length,
              itemBuilder: (context, index) {
                return TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 125,
                    width: 80,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff979797).withOpacity(0.1),
                          Colors.white
                        ],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0.5, 1),
                          spreadRadius: 1,
                          blurRadius: 1,
                          color: Color(0xff979797).withOpacity(0.2),
                        ),
                        const BoxShadow(
                            offset: Offset(-4, -6),
                            spreadRadius: 2,
                            blurRadius: 2,
                            color: Colors.white)
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(2),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Color(0xffFBFBFB).withOpacity(0.99),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.all(10),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(
                                    color: Color(0xff979797).withOpacity(0.1),
                                    width: 2),
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
                                iconList[index],
                                height: 40,
                                width: 40,
                              ),
                            ),
                            Text(
                              bankList[index],
                              style: const TextStyle(
                                  fontSize: 10, color: blackTextColor),
                              textAlign: TextAlign.center,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  PerevodSredstvaWidget(
                  otpravitelCard: otpravitelCard,
                  poluchatel: int.parse(poluchatelController.text),
                  summa: int.parse(summaController.text),
                ),),
              );
            },
            child: Container(
              alignment: Alignment.center,
              width: size.width * 0.9,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xffC5B2FF),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "Далее",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          )
        ],
      ),
    );
  }

  Widget perevodDialog(){
    return AlertDialog(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30.0))),
      content: StatefulBuilder(
        builder: (BuildContext context, StateSetter setState) {
          return Container(
            height: 400,
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Оплатить несколькими картами",
                      style: TextStyle(
                          color: blackTextColor,
                          fontWeight: FontWeight.w600,
                          fontSize: 10),
                    ),
                    Switch(
                        value: switchWalue,
                        onChanged: (value) {
                          setState(() {
                            switchWalue = !switchWalue;
                          });
                          print(switchWalue);
                        })
                  ],
                ),
                const Text(
                  "Humo",
                  style: TextStyle(
                      color: blackTextColor,
                      fontSize: 10,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextButton(onPressed: (){
                  Navigator.pop(context);
                }, child:Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Color(0xff42526E),
                          borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                          "assets/icons/perevodIcons/humo.png"),
                    ),
                    Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "UZCARD - 8600 31** **** 7000",
                          style: TextStyle(
                              color: blackTextColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w300),
                        ),
                        Text(
                          "20 099 513.81 UZS",
                          style: TextStyle(
                              color: blackTextColor,
                              fontSize: 10,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      child:switchWalue?Checkbox(
                        shape: CircleBorder(),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },):SizedBox()
                      ,
                    ),
                  ],
                ),
                ),
                const SizedBox(
                  height: 200,
                ),
                switchWalue?Center(
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: Container(
                      alignment: Alignment.center,
                      height: 40,
                      width: 200,
                      decoration:  BoxDecoration(
                          gradient:  const LinearGradient(
                            colors: [
                              Color(0xffC5B2FF),
                              Color(0xff7BA3F2)
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10)

                      ),
                      child: const Text(
                        "Подтвердить",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ):const SizedBox(),
              ],
            ),
          );
        },
      ),
    );
  }

}
