import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quant_flutter_new/constants/themes.dart';
import 'package:hive/hive.dart';
import 'package:quant_flutter_new/ui/home/home_widgets/perevod_sredstva_widget.dart';
import 'package:quant_flutter_new/ui/widgets/select_theme.dart';
import 'bloc/home_bloc/home_bloc.dart';
import 'ui/widgets/bottom_navigation_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:quant_flutter_new/data/local/local_theme.dart';
void main() async{
  await Hive.initFlutter();
  await Hive.openBox('quantThemes');
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
              home:  PerevodSredstvaWidget(poluchatel: 10, otpravitelCard: "54545",summa: 6546546,),
            );

        },
      ),
    );
  }
}


