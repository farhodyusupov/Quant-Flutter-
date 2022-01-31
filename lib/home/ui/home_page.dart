import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants.dart';
import 'package:quant_flutter_new/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/home/model/lists.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[childCareColor1, childCareColor2],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: AppBarWidget(),
          ),
          body: Column(
            children: [
               Container(
                 height: size.height/4,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: summa.length,
                  itemBuilder: (context, index) => Container(
                    child: Image.asset("assets/icons/Object.png"),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
