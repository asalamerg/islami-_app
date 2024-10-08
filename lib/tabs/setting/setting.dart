import 'package:flutter/material.dart';
import 'package:islami/addtheme.dart';
import 'package:islami/tabs/setting/provider_setting.dart';
import 'package:provider/provider.dart';

class Setting extends StatefulWidget{
  Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  List<Language> l=[
    Language(name: 'عربي', code: " ar"),
    Language(name: 'English', code: 'en'),
  ];

  @override
  Widget build(BuildContext context) {
    ProviderSetting providerSetting =Provider.of<ProviderSetting>(context);
   return Padding(
     padding: const EdgeInsets.only(top: 60,right: 20,left: 20),
     child: Column(children: [

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [Text('DarkMode',style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w600),),
         Switch(
             value:providerSetting.themeMode ==ThemeMode.dark ,//.light ? false : true,
             onChanged: (isDark)=>providerSetting.changeTheme(isDark ? ThemeMode.dark : ThemeMode.light )),],),
       const SizedBox(height: 20,),

       Row(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [Text('Language',style: Theme.of(context).textTheme.displayLarge?.copyWith(fontWeight: FontWeight.w600),),
       DropdownButton<Language>(
           value:l.firstWhere((l) =>l.code==providerSetting.code)
           ,items:l.map((l) => DropdownMenuItem<Language>(value: l, child:Text(l.name,style: Theme.of(context).textTheme.displayLarge,) )) .toList(),
           onChanged: (select){if(select !=null){providerSetting.changeLanguage(select.code);}},
         borderRadius: BorderRadius.all(Radius.circular(11)),
        dropdownColor:providerSetting.isDark ?AddTheme.darkPrimary :AddTheme.White,
       ),
           
       ],),

     ],),
   );

  }
}
class Language{
  String name;
  String code ;
  Language({required this.name , required this.code});
}