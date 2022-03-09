import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quant_flutter_new/bloc/home_bloc/home_bloc.dart';

class SelectThemeWidget extends StatefulWidget {
  const SelectThemeWidget({Key? key}) : super(key: key);

  @override
  _SelectThemeWidgetState createState() => _SelectThemeWidgetState();
}

class _SelectThemeWidgetState extends State<SelectThemeWidget> {
  List<Color> colorList = [
    Color(0xffFFB2BF),
    Color(0xff537895),
    Color(0xff05A9CA),
    Color(0xffC5B2FF),
  ];
  late int selectedThemeIndex=0;

  @override
  Widget build(BuildContext context) {
    HomeBloc _bloc = BlocProvider.of<HomeBloc>(context);
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return Container(
            color: Color(0xff05A9CA),
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Container(
                  height: 40,
                  child: TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset("assets/icons/back.svg"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  height: size.height * 0.45,
                  width: size.width,
                  decoration: BoxDecoration(
                      color: colorList[selectedThemeIndex],
                      borderRadius: BorderRadius.circular(20)),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25)),
                    height: size.height * 0.35,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Выбрать тему",
                              style: TextStyle(fontSize: 20),
                            ),
                            Text(
                              "Светлая",
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 150,
                          child: ListView.builder(
                            itemCount: colorList.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => GestureDetector(

                              onTap: () {
                                setState(() {
                                  selectedThemeIndex = index;
                                });
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                    color: colorList[index],
                                    borderRadius: BorderRadius.circular(15)),
                                height: 110,
                                child: const SizedBox(
                                  height: 110,
                                  width: 130,
                                ),
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            if(selectedThemeIndex!=null){
                              _bloc.add(ChangeThemeEvent(selectedThemeIndex));
                            }else{
                                /// write here nonselected color algorithm
                            }
                            Navigator.pop(context);
                            },
                          child: Container(
                            alignment: Alignment.center,
                            height: 40,
                            width: size.width,
                            decoration: BoxDecoration(
                              color: colorList[selectedThemeIndex],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "Применить",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),

                      ],
                    ))
              ],
            ),
          );
        },
      ),
    );
  }
}
