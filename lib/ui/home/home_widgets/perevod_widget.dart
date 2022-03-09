import 'package:flutter/material.dart';


class PerevodWidget extends StatefulWidget {
  const PerevodWidget({Key? key}) : super(key: key);

  @override
  _PerevodWidgetState createState() => _PerevodWidgetState();
}

class _PerevodWidgetState extends State<PerevodWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Text("Отправитель"),
        ],
      ),
    );
  }
}
