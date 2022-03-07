import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectThemeWidget extends StatefulWidget {
  const SelectThemeWidget({Key? key}) : super(key: key);

  @override
  _SelectThemeWidgetState createState() => _SelectThemeWidgetState();
}

class _SelectThemeWidgetState extends State<SelectThemeWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;

    return SafeArea(
      child: Container(
        color: Color(0xff05A9CA),
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              child: SvgPicture.asset("assets/icons/back.svg"),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: size.height * 0.55,
              width: size.width,
              decoration: BoxDecoration(
                  color: Color(0xff05A225),
                  borderRadius: BorderRadius.circular(20)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: size.height*0.2,
                child: Column(
                  children: [
                    Row(
                      children:const  [
                        Text("Выбрать тему", style: TextStyle(fontSize: 20),),
                        Text("Светлая", style: TextStyle(fontSize: 20),),
                      ],
                    ),
                    // ListView(
                    //   scrollDirection: Axis.horizontal,
                    // ),
                    TextButton(onPressed: (){}, child: Container())
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
