import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/ui/home/my_home/my_homes.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

import '../../../data/model/lists.dart';
import '../../widgets/custom_scaffold.dart';

class AddServiceMyHome extends StatefulWidget {
  const AddServiceMyHome({Key? key}) : super(key: key);

  @override
  State<AddServiceMyHome> createState() => _AddServiceMyHomeState();
}

class _AddServiceMyHomeState extends State<AddServiceMyHome> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: CustomScaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text(
            "Дом №1",
            style: Theme.of(context).textTheme.headline1,
          ),
          actions: <Widget>[
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/my_home/trash.png")),
            IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/my_home/pen.png")),
          ],
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Image.asset("assets/icons/my_home/info.png"),
                    Text(
                      "Нажмите на плюсик чтобы добавить новую услугу",
                      style: Theme.of(context).textTheme.headline1,
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(15),
                height: size.height * 0.75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Услуги",
                          style: Theme.of(context).textTheme.headline5,
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {
                                print("hello");
                              },
                              icon: Image.asset(
                                "assets/icons/my_home/trash1.png",
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                print("hello");
                              },
                              icon: Image.asset(
                                "assets/icons/my_home/add_service.png",
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      height: size.height * 0.33,
                      child: Wrap(
                        children: [
                          for (var i in uslugiList)
                            Container(
                              margin: EdgeInsets.all(12),
                              width: 70,
                              height: 70,
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                    depth: 10, color: Colors.transparent),
                                child: BorderGradient(
                                    child: Image.asset(
                                        "assets/icons/uslugiIcons/" + i.img),
                                    childBackColor: Colors.white,
                                    color2: Color(0xffC5B2FF),
                                    color1: Color(0xff7BA3F2),
                                    borderWidth: 1,
                                    borderRadius: 10),
                              ),
                            )
                        ],
                      ),
                    ),
                    Text(
                      "Выбрать услугу из списка избранных",
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: size.height*0.2,
                      child: ListView.builder(
                          itemCount: izbrannoyList.length,
                          itemBuilder: (context, index) {
                            return Container(
                              padding: EdgeInsets.all(4),
                              margin: EdgeInsets.symmetric(vertical: 4),
                              height: 50,
                              width: size.width,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xffC5B2FF))),
                              child: Row(
                                children: [
                                  Neumorphic(
                                    child: Container(
                                      padding: EdgeInsets.all(2),
                                      child: Image.asset(
                                          izbrannoyList[index].image),
                                    ),
                                    style: const NeumorphicStyle(
                                        intensity: 15,
                                        surfaceIntensity: 15,
                                        color: Colors.transparent,
                                        depth: -2),
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        izbrannoyList[index].poluchatel,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5,
                                      ),
                                      Text(
                                        izbrannoyList[index].poluchatelInfo,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline6,
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const MyHomes()),
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          width: size.width,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xffC5B2FF)),
                          child: Text("Готово"),
                        ))
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
