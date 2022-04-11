import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../bloc/home_bloc/home_bloc.dart';

class TwoButtonWidget extends StatefulWidget {
  const TwoButtonWidget({Key? key}) : super(key: key);

  @override
  State<TwoButtonWidget> createState() => _TwoButtonWidgetState();
}

class _TwoButtonWidgetState extends State<TwoButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      color: Colors.white,
      padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.04),
      child: Row(
        children: [
          TextButton(
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(OplataWidgetEvent(widgetName: "oplata"));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7), gradient: LinearGradient(
                  colors: [
                    Color(0xffC5B2FF),
                    Color(0xffAEADFB),
                    Color(0xff9FAAF8),
                    Color(0xff94A8F6),
                    Color(0xff85A5F4),
                    Color(0xff7BA3F2)
                  ]
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/receipt.svg",
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    "Оплата",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          TextButton(
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(OplataWidgetEvent(widgetName: "perevod"));
            },
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 40,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(7),gradient: LinearGradient(
                  colors: [
                    Color(0xffC5B2FF),
                    Color(0xffAEADFB),
                    Color(0xff9FAAF8),
                    Color(0xff94A8F6),
                    Color(0xff85A5F4),
                    Color(0xff7BA3F2)
                  ]
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/arrows.svg"),
                  const SizedBox(width: 10),
                  const Text(
                    "Переводы",
                    style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );

  }
}
