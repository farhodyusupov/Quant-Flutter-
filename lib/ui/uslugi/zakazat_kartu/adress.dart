import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/uslugi/zakazat_kartu/appBar.dart';

class Adress extends StatelessWidget {
  const Adress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ваш адрес"),
              IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                      "assets/icons/zakazatKartu/location.svg"))
            ],
          ),
        ),
        body: Container(
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              color: Colors.white,
            ),
            width: size.width,
            height: size.height * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Куда доставить?",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Город*",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                Container(
                  padding: EdgeInsets.all(1),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    // color: Colors.white,
                    border: Border.all(
                        color: Colors.yellow, width: 2),
                    borderRadius: BorderRadius.circular(10),

                  ),
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 1,
                            offset: Offset(-0.5, -1),
                          ),
                          BoxShadow(
                              color: Colors.white.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 3,
                            offset: Offset(3, 6),

                          ),

                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        // border: Border.all(color: Colors.white)
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
