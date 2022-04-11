import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import '../../../bloc/home_bloc/home_bloc.dart';
import '../../../data/model/lists.dart';


class CarouselWidget extends StatefulWidget {
  final double positionIndex;
  const CarouselWidget({Key? key, required this.positionIndex}) : super(key: key);

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  CarouselController carouselController = CarouselController();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 8,
          child: CarouselSlider.builder(
            carouselController: carouselController,
            itemCount: karta.length,
            itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) => Opacity(
              opacity: itemIndex == activeIndex ? 1 : 0.5,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 10,
                  ),
                  AnimatedPositioned(
                    top: 10,
                    left: widget.positionIndex > 0.9 ? MediaQuery.of(context).size.width * 0.13 : MediaQuery.of(context).size.width * 0.01,
                    width: widget.positionIndex > 0.9 ? 50 : 200,
                    duration: const Duration(milliseconds: 100),
                    child: widget.positionIndex < 0.9
                        ? Opacity(
                      opacity: 1,
                      child: SvgPicture.asset(
                        "assets/icons/humo.svg",
                        width: 90,
                        height: 20,
                      ),
                    )
                        : SvgPicture.asset(
                      "assets/icons/h.svg",
                      width: 24,
                      height: 20,
                    ),
                  ),
                  AnimatedPositioned(
                    duration: const Duration(milliseconds: 100),
                    left: widget.positionIndex > 0.9 ? MediaQuery.of(context).size.width * 0.25 : MediaQuery.of(context).size.width * 0.16,
                    top: widget.positionIndex > 0.9 ? 10 : 40,
                    // top: positionIndex>0.9 ? 50.0 : 150.0,
                    child: SizedBox(
                      width: 200,
                      child: Row(
                        children: [
                          Text(
                            karta[itemIndex].summa.toString(),
                            style: const TextStyle(fontSize: 18, fontFamily: "Proxima", fontWeight: FontWeight.w900, fontStyle: FontStyle.normal, color: Colors.white),
                          ),
                          const Text(
                            " сум",
                            style: TextStyle(fontSize: 14, fontFamily: "Proxima", fontWeight: FontWeight.w900, fontStyle: FontStyle.normal, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                      duration: const Duration(milliseconds: 100),
                      left: MediaQuery.of(context).size.width * 0.07,
                      top: widget.positionIndex > 0.9 ? 30 : 70,
                      child: SizedBox(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              hideCardNumber(karta[itemIndex].cardNumber.toString()),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.w600,
                                fontFamily: "Proxima",
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              karta[itemIndex].date,
                              style: const TextStyle(fontWeight: FontWeight.w600, color: Colors.white, fontSize: 10, fontFamily: "Proxima"),
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            options: CarouselOptions(
              onPageChanged: (index, nothing1) {
                setState(() {
                  activeIndex = index;
                });
                print(index);
              },
              enableInfiniteScroll: true,
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.58,
              aspectRatio: 2.0,
              initialPage: 0,
              // reverse: false,
            ),
          ),
        );
      },
    );

  }
  ///  for hiding card numbers
  hideCardNumber(String number) {
    String hidedNumber = number.substring(0, 6) + "******" + number.substring(5, 11);
    return hidedNumber;
  }

  /// for hiding card summa
  hideSumma(String summa) {
    String hidedSumma = "";
    for (int i = 0; i < summa.length; i++) {
      hidedSumma = hidedSumma + "*";
    }
    return hidedSumma;
  }

}
