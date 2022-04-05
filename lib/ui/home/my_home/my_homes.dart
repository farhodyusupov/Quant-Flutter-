import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:quant_flutter_new/data/model/lists.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/clip_path_widget.dart';
import 'package:quant_flutter_new/ui/home/my_home/kvitansiya.dart';
import 'package:quant_flutter_new/ui/widgets/border_gradient_widget.dart';

class MyHomes extends StatefulWidget {
  const MyHomes({Key? key}) : super(key: key);

  @override
  State<MyHomes> createState() => _MyHomesState();
}

class _MyHomesState extends State<MyHomes> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Мои дома", style: Theme.of(context).textTheme.headline1),
          actions: [
            TextButton(
              onPressed: () {},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Icon(
                  Icons.add,
                  color: Theme.of(context).scaffoldBackgroundColor,
                ),
              ),
            )
          ],
        ),
        body: Container(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 10),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '''Проведите пальцем по элементу, чтобы 
перейти в другой дом.И свайп вверх для 
дополнительных функции''',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Text(
                        "Дом №1",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: size.height * 0.5,
                        child: ListView(
                          children: [
                            for (var index in homeServices)
                              Container(
                                margin: EdgeInsets.only(bottom: 8),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border:
                                        Border.all(color: Color(0xffC5B2FF))),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 50,
                                      child: Image.asset(index.image),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          index.service,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5,
                                        ),
                                        Text(
                                          index.description,
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline6,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Column(
                  children:[
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: containerWidget("kvitansiya.png", "Квитанция"),
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const Kvitansiya()),
                            );
                          },
                        ),
                        GestureDetector(
                          child: containerWidget("oplata.png","К оплате"),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: containerWidget("edit.png","Изменить дом"),

                        ),
                        GestureDetector(
                          child: containerWidget("add.png","Добавить Услугу"),
                        ),
                      ],
                    )

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget containerWidget(String img, String txt){
    return Container(
      margin: EdgeInsets.all(3),

      child: BorderGradient(
        childBackColor: Colors.white,
        color1: Color(0xffC5B2FF),
        color2: Color(0xff7BA3F2),
        borderWidth: 1,
        borderRadius: 10,
        child: Container(
          height: 60,
          width: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/icons/my_home/"+img),
              Text(txt, style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 11), textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
