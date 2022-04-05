import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:quant_flutter_new/constants/constants.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

import '../../widgets/bottom_navigation_bar.dart';

class Adress extends StatelessWidget {
  const Adress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController cityController = TextEditingController();
    TextEditingController streetController = TextEditingController();
    TextEditingController apartmentController = TextEditingController();
    TextEditingController homeController = TextEditingController();
    TextEditingController locationController = TextEditingController();

    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             const  Text("Ваш адрес"),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Adress()),
                    );
                  },
                  icon: SvgPicture.asset(
                      "assets/icons/zakazatKartu/location.svg"))
            ],
          ),
        ),
        body: Container(
          height: size.height * 0.87,
          alignment: Alignment.bottomCenter,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration:const  BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
              color: Colors.white,
            ),
            width: size.width,
            height: size.height * 0.7,
            child: ListView(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // const SizedBox(height: 40),
                Text(
                  "Куда доставить?",
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                const SizedBox(height: 20),
                Form(
                  // key: _adressFormKey,
                  child: Column(
                    children: [
                      txtForm(cityController, "Город*"),
                      txtForm(streetController, "Улица*"),
                      txtForm(apartmentController, "Номер дома*"),
                      txtForm(homeController, "Номер квартиры"),
                      locationTxt(locationController, "Ваша локация"),
                      const SizedBox(
                        height: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const BottomNavBar()),
                            );
                          },
                          child: BorderGradient(
                            borderWidth: 1,
                            childBackColor: Colors.white,
                            borderRadius: 15,
                            color2: Color(0xffC5B2FF),
                            color1: Color(0xff568FFF),
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: size.width,
                              child: Text(
                                "Заказать карту",
                                style: TextStyle(
                                    color: blackTextColor.withOpacity(0.5)),
                              ),
                            ),
                          ))
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget txtForm(TextEditingController txtCont, String header) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header,
            style: const TextStyle(
                color: blackTextColor,
                fontWeight: FontWeight.w600,
                fontSize: 15)),
        const SizedBox(height: 10),
        Neumorphic(
          style: NeumorphicStyle(
              depth: -3,
              color: Colors.transparent,
              boxShape:
                  NeumorphicBoxShape.roundRect(BorderRadius.circular(20))),
          child: BorderGradient(
            color1: Color(0xffC5B2FF),
            color2: Color(0xff568FFF),
            borderRadius: 20,
            childBackColor: Colors.white,
            borderWidth: 1,
            child: TextFormField(
              style: TextStyle(color: Colors.black),
              controller: txtCont,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
        )
      ],
    );
  }

  Widget locationTxt(TextEditingController txtCont, String header) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          header,
          style: TextStyle(color: blackTextColor, fontWeight: FontWeight.w600),
        ),
        Neumorphic(
          style: NeumorphicStyle(
            depth: -3,
            color: Colors.transparent,
            // shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(20)),
          ),
          child: BorderGradient(
            color1: Color(0xffC5B2FF),
            color2: Color(0xff568FFF),
            borderRadius: 20,
            childBackColor: Colors.white,
            borderWidth: 1,
            child: TextFormField(
              onChanged: (txt) {},
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                  suffixIcon: Icon(
                Icons.location_on_outlined,
                color: Color(0xff7BA3F2),
              )),
              controller: txtCont,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
        )
      ],
    );
  }
}
