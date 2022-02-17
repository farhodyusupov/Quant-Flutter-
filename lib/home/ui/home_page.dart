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
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'chart_widget.dart';
import 'drawer_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double positionIndex = 0;

  final PanelController controller = PanelController();
  bool selected = false;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

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
          key: _scaffoldkey,
          endDrawer: CustomDrawer(
            size: size,
          ),
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            actions: const [SizedBox()],
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: AppBarWidget(),
          ),
          body: Stack(
            children: [
              SlidingUpPanel(
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                controller: controller,
                parallaxEnabled: true,
                parallaxOffset: 0.03,
                minHeight: size.height * 0.5,
                maxHeight: size.height * 0.69,
                panelSnapping: false,
                body: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          carousel(),
                          Stack(
                            children: [
                              const LineChartWidget(),
                              Positioned(
                                right: 0,
                                top: size.height / 19,
                                child: GestureDetector(
                                  onTap: () {
                                    _scaffoldkey.currentState!.openEndDrawer();
                                  },
                                  child: Container(
                                    width: 14,
                                    height: 68,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF7BA3F2),
                                      border: Border.all(color: Colors.white),
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(4.2),
                                        bottomLeft: Radius.circular(4.2),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                onPanelSlide: (position) {
                  print(position);
                  setState(() {
                    positionIndex = position;
                  });
                },
                panelBuilder: (ScrollController scrollController) =>
                    transaction(scrollController),
              ),
              Positioned(
                bottom: 0,
                child: twoButton(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// this is cards carousel
  Widget carousel() {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 7,
          child: CarouselSlider.builder(
            itemCount: karta.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Stack(
              alignment: Alignment.topCenter,
              children: [
                AnimatedContainer(
                  width: 200,
                  duration: Duration(seconds: 1),
                  child: positionIndex < 0.9
                      ? Image.asset(
                          "assets/icons/Object.png",
                          width: 100,
                        )
                      : SvgPicture.asset(
                          "assets/icons/h.svg",
                          width: 100,
                          height: 20,
                        ),
                ),
                AnimatedPositioned(
                  duration: Duration(milliseconds: 100),
                  left: positionIndex>0.9?MediaQuery.of(context).size.width*0.30:MediaQuery.of(context).size.width*0.15,
                  top: positionIndex>0.9?0:40,
                  // top: positionIndex>0.9 ? 50.0 : 150.0,
                  child: Text(
                    karta[itemIndex].summa.toString() + " сум",
                    style: const TextStyle(
                        fontSize: 15,
                        fontFamily: "Proxima",
                        fontWeight: FontWeight.w900,
                        fontStyle: FontStyle.normal,
                        color: Colors.white),
                  ),
                ),
                AnimatedPositioned(
                    duration: Duration(milliseconds: 100),
                    top: positionIndex>0.9?20:60,
                    child: Row(
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
                    )),
              ],
            ),
            options: CarouselOptions(
              enableInfiniteScroll: true,
              autoPlay: false,
              // enlargeCenterPage: true,
              // viewportFraction: 0.9,
              // aspectRatio: 2.0,
              initialPage: 2,
            ),
          ),
        );
      },
    );
  }

  ///transaction Container
  Widget transaction(ScrollController scrollController) {
    return ListView(
      // controller: scrollController,
      padding: const EdgeInsets.all(0),
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
        Container(
          height: 230,
          child: ListView.builder(
            controller: scrollController,
            padding: EdgeInsets.only(top: 20, right: 22),
            itemCount: 4,
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
                      "-" + transactions[index].summ.toString() + " сум",
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
      ],
    );
  }

  /// two buttons
  Widget twoButton() {
    return Container(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery.of(context).size.width / 9 * 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xff7BA3F2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/receipt.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Оплата",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 40,
              width: MediaQuery.of(context).size.width / 9 * 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xff7BA3F2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/icons/arrows.svg"),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Переводы",
                    style: TextStyle(
                        color: Color(0xffFFFFFF),
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
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
