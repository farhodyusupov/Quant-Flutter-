import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quant_flutter_new/bloc/home_bloc/home_bloc.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/carousel_widget.dart';
import 'package:quant_flutter_new/ui/home/oplata/oplata_widget.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/transaction_widget.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/two_button.dart';
import 'package:quant_flutter_new/ui/test/test_widgets.dart';
import 'package:quant_flutter_new/ui/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/ui/widgets/drawer.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import '../widgets/custom_scaffold.dart';
import 'home_widgets/chart_widget.dart';
import '../widgets/end_drawer.dart';
import 'perevod/perevod_widget.dart';

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
    return SafeArea(
      child: Container(
        margin: EdgeInsets.all(0),

        // decoration: const BoxDecoration(),
        child: CustomScaffold(
          key: _scaffoldkey,
          endDrawer: CustomDrawer(
            size: size,
          ),
          // backgroundColor: Colors.transparent,
          appBar: AppBar(
            systemOverlayStyle: SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.red,

              // Status bar brightness (optional)

            ),
            actions: const [SizedBox()],
            automaticallyImplyLeading: false,
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: AppBarWidget(_scaffoldkey, title: "",),
          ),
          body: Container(
            // alignment: Alignment.bottomCenter,
            padding: EdgeInsets.zero,
            margin: EdgeInsets.all(0),
            height: size.height*0.81,
            child: Expanded(
              child: Stack(
                children: [
                  BlocBuilder<HomeBloc, HomeState>(
                    builder: (context, state) {
                      return SlidingUpPanel(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(35)),
                          controller: controller,
                          parallaxEnabled: true,
                          parallaxOffset: 0.01,
                          minHeight: size.height * 0.52,
                          maxHeight: size.height * 0.75,
                          panelSnapping: true,
                          body: Container(
                            height: size.height,
                            child: Column(
                              children: [
                                CarouselWidget(positionIndex: positionIndex),
                                Stack(
                                  children: [
                                    const TestWidget(color: Colors.transparent),

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
                          panelBuilder: (ScrollController scrollController) {
                            return state is OplataWidgetState
                                ? state.widgetName == 'oplata'
                                ? OplataWidget()
                                : state.widgetName == 'perevod'
                                ? PerevodWidget()
                                : TransactionWidget(scrollController: scrollController)
                                : TransactionWidget(scrollController: scrollController);
                          });
                    },
                  ),
                  Positioned(
                    right: 0,
                    top: size.height / 10,
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
                  Positioned(
                    bottom: 0,
                    child: TwoButtonWidget(),
                  ),
                ],
              ),
            ),
          ),
          drawer: const DrawerWidget(),
        ),
      ),
    );
  }

  /// this is cards carousel
  
  ///transaction Container

  /// two buttons


}

