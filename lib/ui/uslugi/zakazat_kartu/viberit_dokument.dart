import 'package:flutter/material.dart';
import 'package:quant_flutter_new/ui/widgets/container_glass.dart';
import 'package:quant_flutter_new/ui/widgets/glassMorphism.dart';

class ChooseDocument extends StatefulWidget {
  const ChooseDocument({Key? key}) : super(key: key);

  @override
  _ChooseDocumentState createState() => _ChooseDocumentState();
}

class _ChooseDocumentState extends State<ChooseDocument> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          width: size.width*0.9,
          child: Column(
            children: [
              ContainerGlass(img: "img", title: "title", borderRadius: 10, color: Colors.white, child: Text(""))
            ],
          ),
        ),
      ),
    );
  }
}
