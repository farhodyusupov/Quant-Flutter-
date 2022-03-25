import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceAppBar extends StatelessWidget {
  final String title;
  const ServiceAppBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title),
        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/zakazatKartu/info.svg"))
      ],
    );
  }
}
