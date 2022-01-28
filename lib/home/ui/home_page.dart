import 'package:flutter/material.dart';
import 'package:quant_flutter_new/constants.dart';
import 'package:quant_flutter_new/widgets/app_bar_widget.dart';
import 'package:quant_flutter_new/widgets/graphic_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: <Color>[childCareColor1, childCareColor2],
            ),
          ),
        ),
        title: AppBarWidget(),
      ),
      body: CustomScrollView(
        slivers: <Widget>[

          SliverAppBar(
            collapsedHeight: size.height / 7,
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: size.height / 3,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                  colors: <Color>[childCareColor1, childCareColor2],
                ),
              ),
              child: FlexibleSpaceBar(
                background: const SparkLineWidget(),
                title: Container(
                  alignment: Alignment.center,
                  height: size.height / 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                       Image.asset("assets/icons/humo.png"),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        "20 000 513 so`m",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "986051****7000",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                      // SizedBox(height: size.,)
                    ],
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  height: 100.0,
                  child: Center(
                    child: Text("d", textScaleFactor: 5),
                  ),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
