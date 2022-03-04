import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quant_flutter_new/bloc/home_bloc/home_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/data/model/lists.dart';
import 'package:quant_flutter_new/ui/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'home_widgets/chart_widget.dart';
import '../widgets/end_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double positionIndex = 0;
  CarouselController carouselController = CarouselController();
  final PanelController controller = PanelController();
  bool selected = false;
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //   begin: Alignment.topCenter,
        //   end: Alignment.bottomCenter,
        //   colors: <Color>[childCareColor1, childCareColor2],
        // ),
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
            title: AppBarWidget(_scaffoldkey),
          ),
          body: Stack(
            children: [
              SlidingUpPanel(
                borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                controller: controller,
                parallaxEnabled: true,
                parallaxOffset: 0.005,
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
          drawer: DrawerWidget(),
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
            carouselController: carouselController,
            itemCount: karta.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    Opacity(
              opacity: itemIndex == activeIndex ? 1 : 0.5,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    height: 10,
                  ),
                  AnimatedPositioned(
                    top: 10,
                    left: positionIndex > 0.9
                        ? MediaQuery.of(context).size.width * 0.13
                        : MediaQuery.of(context).size.width * 0.01,
                    width: positionIndex > 0.9 ? 50 : 200,
                    duration: Duration(milliseconds: 100),
                    child: positionIndex < 0.9
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
                    duration: Duration(milliseconds: 100),
                    left: positionIndex > 0.9
                        ? MediaQuery.of(context).size.width * 0.25
                        : MediaQuery.of(context).size.width * 0.16,
                    top: positionIndex > 0.9 ? 10 : 40,
                    // top: positionIndex>0.9 ? 50.0 : 150.0,
                    child: Container(
                      width: 200,
                      child: Row(
                        children: [
                          Text(
                            karta[itemIndex].summa.toString(),
                            style: const TextStyle(
                                fontSize: 18,
                                fontFamily: "Proxima",
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.normal,
                                color: Colors.white),
                          ),
                          const Text(
                            " сум",
                            style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Proxima",
                                fontWeight: FontWeight.w900,
                                fontStyle: FontStyle.normal,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  AnimatedPositioned(
                      duration: Duration(milliseconds: 100),
                      left: MediaQuery.of(context).size.width * 0.07,
                      top: positionIndex > 0.9 ? 30 : 70,
                      child: Container(
                        width: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              hideCardNumber(
                                  karta[itemIndex].cardNumber.toString()),
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
                              style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontFamily: "Proxima"),
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

  ///transaction Container
  Widget transaction(ScrollController scrollController) {
    return ListView(
      // controller: scrollController,
      padding: const EdgeInsets.only(left: 20, right: 20),
      children: [
        SvgPicture.asset(
          "assets/icons/topButton.svg",
          color: Color(0xffEFF1FF),
        ),
        const SizedBox(
          height: 0,
        ),
        Container(
          // padding: EdgeInsets.only(left: 20),
          alignment: Alignment.centerLeft,
          child: const Text(
            "Транзакции",
            textAlign: TextAlign.left,
            style: TextStyle(
                color: Color(0xff202020),
                fontSize: 13,
                fontWeight: FontWeight.w700,
                fontFamily: "Proxima"),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 320,
          child: ListView.builder(
            controller: scrollController,
            itemCount: transactions.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(bottom: 14),
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

        /// scrolldan kegin chiqishi kerak
        /// it must appear after scrolling
       positionIndex>0.5?
       Column(
         children: [
           myHome(),
           const SizedBox(
             height: 15,
           ),
           Container(
             alignment: Alignment.centerLeft,
             padding: const EdgeInsets.only(left: 10),
             child: const Text(
               "Предложения и лайфхаки",
               style: TextStyle(
                   color: Color(0xff202020),
                   fontSize: 14,
                   fontWeight: FontWeight.w600),
             ),
           ),
           const SizedBox(
             height: 10,
           ),
           Container(
             height: 150,
             child: ListView(
               scrollDirection: Axis.horizontal,
               children: [
                 Container(
                   width: 120,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(
                           image: AssetImage("assets/backgrounds/perevod.png"),
                           fit: BoxFit.fill)),
                   child: TextButton(
                     onPressed: () {},
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text(
                               "0",
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 50,
                                   fontWeight: FontWeight.w800),
                             ),
                             Container(
                               alignment: Alignment.bottomCenter,
                               height: 40,
                               child: const Text(
                                 "%",
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontWeight: FontWeight.w600,
                                     fontSize: 20),
                               ),
                             )
                           ],
                         ),
                         const Text(
                           "за переводы",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 13,
                               fontWeight: FontWeight.w600),
                         ),
                         const Text(
                           "между всеми HUMO",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w300,
                               fontSize: 10),
                         ),
                         const SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text(
                               "Смотреть",
                               style: TextStyle(color: Colors.white, fontSize: 12),
                             ),
                             const SizedBox(
                               width: 10,
                             ),
                             SvgPicture.asset("assets/icons/smotret.svg")
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(
                   width: 10,
                 ),
                 Container(
                   width: 120,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(
                           image: AssetImage("assets/backgrounds/atm.png"),
                           fit: BoxFit.fill)),
                   child: TextButton(
                     onPressed: () {},
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Container(
                           alignment: Alignment.bottomCenter,
                           height: 50,
                           child: Image.asset(
                             "assets/icons/atm.png",
                             width: 40,
                             height: 40,
                           ),
                         ),
                         const SizedBox(
                           height: 10,
                         ),
                         const Text(
                           "взять наличные",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 13,
                               fontWeight: FontWeight.w600),
                           textAlign: TextAlign.center,
                         ),
                         const Text(
                           "без пластик карты",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w300,
                               fontSize: 10),
                         ),
                         const SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text(
                               "Смотреть",
                               style: TextStyle(color: Colors.white, fontSize: 12),
                             ),
                             const SizedBox(
                               width: 10,
                             ),
                             SvgPicture.asset("assets/icons/smotret.svg")
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
                 const SizedBox(
                   width: 10,
                 ),
                 Container(
                   width: 120,
                   decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       image: const DecorationImage(
                           image: AssetImage("assets/backgrounds/yellov.png"),
                           fit: BoxFit.fill)),
                   child: TextButton(
                     onPressed: () {},
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text(
                               "0",
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 50,
                                   fontWeight: FontWeight.w800),
                             ),
                             Container(
                               alignment: Alignment.bottomCenter,
                               height: 40,
                               child: const Text(
                                 "%",
                                 style: TextStyle(
                                     color: Colors.white,
                                     fontWeight: FontWeight.w600,
                                     fontSize: 20),
                               ),
                             )
                           ],
                         ),
                         const Text(
                           "за переводы",
                           style: TextStyle(
                               color: Colors.white,
                               fontSize: 13,
                               fontWeight: FontWeight.w600),
                         ),
                         const Text(
                           "между всеми HUMO",
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w300,
                               fontSize: 10),
                         ),
                         const SizedBox(
                           height: 15,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             const Text(
                               "Смотреть",
                               style: TextStyle(color: Colors.white, fontSize: 12),
                             ),
                             const SizedBox(
                               width: 10,
                             ),
                             SvgPicture.asset("assets/icons/smotret.svg")
                           ],
                         ),
                       ],
                     ),
                   ),
                 ),
               ],
             ),
           ),
           const SizedBox(
             height: 70,
           )],
       ):SizedBox()
      ],
    );
  }

  /// two buttons
  Widget twoButton() {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04),
      child: Row(
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: const Color(0xff7BA3F2)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    "assets/icons/receipt.svg",
                  ),
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
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          TextButton(
            onPressed: () {},
            child: Container(
              width: MediaQuery.of(context).size.width * 0.4,
              height: 40,
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

  ///my home button
  Widget myHome() {
    Size size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffC5B2FF),
        minimumSize: Size(size.width, 60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      onPressed: () {},
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/myHome.svg"),
          SizedBox(
            width: 15,
          ),
          Text(
            "My home",
            style: TextStyle(color: Colors.white),
          )
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
