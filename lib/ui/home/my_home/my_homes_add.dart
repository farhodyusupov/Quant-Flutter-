import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../widgets/custom_scaffold.dart';
import 'add_home.dart';

class MyHomeAdd extends StatefulWidget {
  const MyHomeAdd({Key? key}) : super(key: key);

  @override
  State<MyHomeAdd> createState() => _MyHomeAddState();
}

class _MyHomeAddState extends State<MyHomeAdd> {
  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).scaffoldBackgroundColor;
    return SafeArea(
      child: CustomScaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Мои дома",
            style: Theme.of(context).textTheme.headline1,
          ),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height*0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyHome()),
                    );
                  },
                  child: neumorphicButton(color),
                ),
              ),
              Text("Добавить дом")
            ],
          ),
        ),
      ),
    );
  }
  Widget neumorphicButton(Color color){
    return Neumorphic(
      style: NeumorphicStyle(
          shadowDarkColor: Colors.grey.withOpacity(0.8),
          depth: -5,
          color: Colors.transparent,
          border: NeumorphicBorder(
              color: Colors.white,
              width: 2
          ),
          intensity:1
      ),
      child: Container(

        padding: EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.transparent,
              ),
              borderRadius: BorderRadius.circular(5)),
          child: Icon(
            Icons.add,
            size: 50,
            color: color,
          ),
        ),
      ),
    );
  }
}
