import 'package:flutter/material.dart';
import 'package:islami/tabs/hadeth/hadeth.dart';
import 'package:islami/tabs/quran/quran.dart';
import 'package:islami/tabs/radio/radio.dart';
import 'package:islami/tabs/sebha/sebha.dart';
import 'package:islami/tabs/setting/setting.dart';

class Home extends StatefulWidget{
  static const String routeName='/home';

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentindex=0;
  List<Widget> tabs = [
    RadioTabe(),
    Hadeth(),
    Quran(),
    Sebha(),
    Setting(),

  ];
  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/image/bg3.png'),
          fit: BoxFit.fill,
          )

        ),
        child: Scaffold(appBar:
            AppBar(title: Text('إسلامي'),),
        body: tabs[currentindex],
           bottomNavigationBar: BottomNavigationBar(
             currentIndex: currentindex,
             onTap: (intex){
         currentindex=intex;
         setState(() {});
             },
             items: [
             BottomNavigationBarItem(
           icon:ImageIcon(
               AssetImage('assets/image/radio.png')),label:'radio'),
             BottomNavigationBarItem(
           icon:ImageIcon(
               AssetImage('assets/image/icon_hadeth.png')),label: 'hadeth'),
             BottomNavigationBarItem(
           icon:ImageIcon(
               AssetImage('assets/image/quran.png')),label: 'quran'),
             BottomNavigationBarItem(
           icon:ImageIcon(
               AssetImage('assets/image/icon_sebha.png')),label: 'sebha'),
         BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'setting'),

           ],),

            ),
      );
  }
}