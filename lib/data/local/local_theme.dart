import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalData{

  getCurrentTheme() async{
    Box box  = await Hive.openBox('quantThemes');
    box.get("currnetTheme");
  }
}
