import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/menu.svg", color: Color(0xFFFFFFFF))),
          Container(
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/unview.svg", color: Color(0xFFFFFFFF),)),
                IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/notification.svg", color:Color(0xFFFFFFFF),)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
