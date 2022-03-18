import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/bloc/home_bloc/home_bloc.dart';

class AppBarWidget extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();
  final String title;
   AppBarWidget(GlobalKey<ScaffoldState> scaffoldkey, {Key? key, required this.title}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  bool isHide = true;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    HomeBloc _bloc = BlocProvider.of<HomeBloc>(context);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Builder(
            builder:(conctex)=> IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: SvgPicture.asset("assets/icons/menu.svg",
                    color: const Color(0xFFFFFFFF))),
          ),
          Text(widget.title),
          Container(
            child: Row(
              children: [
                IconButton(
                  onPressed: () async {
                    setState(() {
                      isHide = !isHide;
                    });
                    _bloc.add(HideCardSummaEvent(isHide));
                  },
                  icon: SvgPicture.asset(
                    "assets/icons/unview.svg",
                    color: isHide? Color(0xFFFFFFFF):Colors.black87,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon:
                    SvgPicture.asset(
                      "assets/icons/notification.svg",
                      color: const Color(0xFFFFFFFF),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
