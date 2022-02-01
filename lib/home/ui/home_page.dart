import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quant_flutter_new/constants.dart';
import 'package:quant_flutter_new/home/bloc/home_bloc.dart';
import 'package:quant_flutter_new/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/home/model/lists.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();

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
              carousel(),

            ],
          ),
        ));
  }



  Widget carousel(){
    return BlocBuilder<HomeBloc, HomeState>(
  builder: (context, state) {
    return Container(
        height: MediaQuery.of(context).size.height / 4,
        child: CarouselSlider.builder(
          itemCount: karta.length,
          itemBuilder: (BuildContext context, int itemIndex,
              int pageViewIndex) =>
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      karta[itemIndex].cardType=="uzcard"?
                      Image.asset("assets/icons/uzcard.png"):Image.asset(
                        "assets/icons/Object.png",
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        karta[itemIndex].summa.toString()+" сум",
                        style: const TextStyle(
                            fontSize: 22,
                            fontFamily: "Proxima",
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            state.isHide?karta[itemIndex].cardNumber:hideCardNumber(karta[itemIndex].cardNumber.toString()),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Proxima",
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            karta[itemIndex].date,
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: "Proxima"),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
          options: CarouselOptions(
            autoPlay: false,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            aspectRatio: 2.0,
            initialPage: 2,
          ),
        ));
  },
);
  }

}


hideCardNumber(String number){
  String hidedNumber = number.substring(0,6)+"******"+number.substring(5,11);
  return hidedNumber;
}