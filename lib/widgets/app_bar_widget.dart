import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.menu, color: Colors.white,)),
          Container(
            child: Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.visibility_off_outlined, color: Colors.white,)),
                IconButton(onPressed: (){}, icon: Icon(Icons.notifications, color: Colors.white,)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
