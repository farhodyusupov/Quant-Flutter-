import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:quant_flutter_new/constants/themes.dart';
import 'package:hive/hive.dart';
import 'package:quant_flutter_new/ui/test/test_widgets.dart';
import 'bloc/home_bloc/home_bloc.dart';
import 'l10n/l10n.dart';
import 'ui/widgets/bottom_navigation_bar.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
void main() async {


  await Hive.initFlutter();
  await Hive.openBox('quantThemes');
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xffC9C3FA)
    ));
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Quant',
            theme: state is ChangeThemeState
                ? themeList[state.themeNumber]
                : themeList[0],
            home: BottomNavBar(),
            supportedLocales: L10n.all,
            locale: Locale('ru'),
            localizationsDelegates: [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate
            ],
          );
        },
      ),
    );
  }
}
