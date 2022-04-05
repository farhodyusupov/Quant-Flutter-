import 'package:flutter/material.dart';

class Kvitansiya extends StatefulWidget {
  const Kvitansiya({Key? key}) : super(key: key);

  @override
  State<Kvitansiya> createState() => _KvitansiyaState();
}

class _KvitansiyaState extends State<Kvitansiya>with SingleTickerProviderStateMixin {
  late TabController _controller ;
  @override
  void initState() {
    super.initState();
    _controller  = TabController(length: 3, initialIndex: 0, vsync: this);
  }
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text("Квитаеция", style: Theme.of(context).textTheme.subtitle1),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.filter_alt_outlined))
          ],
        ),
        body: Container(
          child: Column(
            children: [
              TabBar(
                controller: _controller,
                tabs: [
                  Tab(text: "Все дома"),
                  Tab(text:"Дом №1"),
                  Tab(text:"Дом №2"),

                ],
              ),
              TabBarView(
                controller: _controller,
                  children: [
                Text("1"),
                Text("2"),
                Text("3"),
              ])
            ],
          ),
        ),
      ),
    );
  }
}
