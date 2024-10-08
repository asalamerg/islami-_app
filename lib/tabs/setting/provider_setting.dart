import 'package:flutter/material.dart';

class ProviderSetting with ChangeNotifier {
  ThemeMode themeMode=ThemeMode.light;
  String code='en';


  String get backgrountname =>themeMode==ThemeMode.light ? 'bg3' : 'dark_bg';

  bool  get isDark =>themeMode==ThemeMode.dark;
  void changeTheme(ThemeMode select){
    themeMode=select;
    notifyListeners();
  }
  void changeLanguage(String selectCode){
    code=selectCode;
notifyListeners();
  }
}
