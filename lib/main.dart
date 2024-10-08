import 'package:flutter/material.dart';
import 'package:islami/addtheme.dart';
import 'package:islami/home_screen.dart';
import 'package:islami/sura_quran.dart';
import 'package:islami/tabs/setting/provider_setting.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'hadith_page.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_)=>ProviderSetting(),
  child: IslamiApp()));
}
class IslamiApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    ProviderSetting providerSetting=Provider.of<ProviderSetting>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
       Home.routeName:(context)=>Home(),
        SuraQuran.routeName:(context)=>SuraQuran(),
        BageHaith.routeName:(context)=>BageHaith(),
      },initialRoute:Home.routeName ,
      theme:AddTheme.lightTheme ,
      darkTheme: AddTheme.darkThem,
      themeMode: providerSetting.themeMode,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(providerSetting.code),

    );
  }
}
