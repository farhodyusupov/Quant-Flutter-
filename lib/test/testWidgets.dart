import 'package:flutter/material.dart';

class TestWidgets extends StatefulWidget {
  const TestWidgets({Key? key}) : super(key: key);

  @override
  _TestWidgetsState createState() => _TestWidgetsState();
}

class _TestWidgetsState extends State<TestWidgets> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 350,
      child: AnimatedPositioned(
        // width: selected ? 200.0 : 50.0,
        height: selected ? 350.0 : 200.0,
        // top: selected ? 50.0 : 150.0,
        duration: const Duration(seconds: 2),
        curve: Curves.fastOutSlowIn,
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: Container(
            color: Colors.blue,
            child: const Center(child: Text('Tap me')),
          ),
        ),
      ),
    );
  }
}
