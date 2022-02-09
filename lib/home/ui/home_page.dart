import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:quant_flutter_new/constants.dart';
import 'package:quant_flutter_new/home/bloc/home_bloc.dart';
import 'package:quant_flutter_new/home/model/lists.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:quant_flutter_new/home/ui/clip_path_widget.dart';
import 'package:quant_flutter_new/widgets/app_bar_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/home/model/lists.dart';
import 'chart_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController controller = PageController();
  bool selected = false;

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
      child: SafeArea(
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
              const LineChartWidget(),
              transaction(),
            ],
          ),
        ),
      ),
    );
  }

  Widget twoButton() {
    return Container(
      padding: EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery.of(context).size.width/9*4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff7BA3F2)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/receipt.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Оплата", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13, fontWeight: FontWeight.w700),),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery.of(context).size.width/9*4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Color(0xff7BA3F2)

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/arrows.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  Text("Переводы", style: TextStyle(color: Color(0xffFFFFFF), fontSize: 13, fontWeight: FontWeight.w700),),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// this is cards carousel
  Widget carousel() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 7,
          child: CarouselSlider.builder(
            itemCount: karta.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    karta[itemIndex].cardType == "uzcard"
                        ? Image.asset("assets/icons/uzcard.png")
                        : Image.asset(
                            "assets/icons/Object.png",
                          ),
                    const SizedBox(
                      height: 10,
                    ),
                    if (state is HideCardSummaState)
                      Text(
                        state.isHide
                            ? hideSumma(karta[itemIndex].summa.toString()) +
                                " сум"
                            : karta[itemIndex].summa.toString() + " сум",
                        style: const TextStyle(
                            fontSize: 22,
                            fontFamily: "Proxima",
                            fontWeight: FontWeight.w900,
                            fontStyle: FontStyle.normal,
                            color: Colors.white),
                      )
                    else
                      Text(
                        karta[itemIndex].summa.toString() + " сум",
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
                          hideCardNumber(
                              karta[itemIndex].cardNumber.toString()),
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
          ),
        );
      },
    );
  }

  ///transaction Container
  Widget transaction() {
    return Expanded(
      child: ClipPath(
        clipper: ClipPathClass(),
        child: Container(
          margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          alignment: Alignment.topCenter,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            children: [
              SvgPicture.asset(
                "assets/icons/topButton.svg",
                color: Color(0xffEFF1FF),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                  padding: EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Транзакции",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color(0xff202020),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Proxima"),
                  )),
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.only(top: 20, right: 22),
                  itemCount: transactions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(bottom: 14, left: 14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                child: Image.asset(transactions[index].image),
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Color(0xff17979797), width: 1.3),
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 14,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    transactions[index].paymentTo,
                                    style: const TextStyle(
                                        color: Color(0xff202020),
                                        fontSize: 14,
                                        fontFamily: "Proxima",
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(transactions[index].number,
                                      style: TextStyle(
                                          color: const Color(0xff202020)
                                              .withOpacity(0.5),
                                          fontSize: 9,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "Proxima"))
                                ],
                              ),
                            ],
                          ),
                          Text(
                            transactions[index].summ.toString() + " сум",
                            style: const TextStyle(
                                color: Color(0xff202020),
                                fontSize: 11,
                                fontFamily: "Proxima",
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              twoButton(),

            ],
          ),
        ),
      ),
    );
  }
}

///  for hiding card numbers
hideCardNumber(String number) {
  String hidedNumber =
      number.substring(0, 6) + "******" + number.substring(5, 11);
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
