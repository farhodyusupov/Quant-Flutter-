import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quant_flutter_new/constants/themes.dart';

import 'bloc/home_bloc/home_bloc.dart';
import 'ui/widgets/bottom_navigation_bar.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {

            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Quant',

              theme: state is ChangeThemeState?themeList[state.themeNumber]:themeList[0],
              home: const BottomNavBar(),
            );

        },
      ),
    );
  }
}


