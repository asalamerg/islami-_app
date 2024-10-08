
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:islami/sura_quran.dart';

class Quran extends StatelessWidget{
  List<String>SuraNmame=[
    "الفاتحه","البقرة","آل عمران","النساء","المائدة","الأنعام","الأعراف","الأنفال","التوبة","يونس","هود"
    ,"يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون"
    ,"النّور","الفرقان","الشعراء","النّمل","القصص","العنكبوت","الرّوم","لقمان","السجدة","الأحزاب","سبأ"
    ,"فاطر","يس","الصافات","ص","الزمر","غافر","فصّلت","الشورى","الزخرف","الدّخان","الجاثية","الأحقاف"
    ,"محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة"
    ,"الحشر","الممتحنة","الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج"
    ,"نوح","الجن","المزّمّل","المدّثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الإنفطار"
    ,"المطفّفين","الإنشقاق","البروج","الطارق","الأعلى","الغاشية","الفجر","البلد","الشمس","الليل","الضحى","الشرح"
    ,"التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر",
    "الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر","المسد","الإخلاص","الفلق"," الناس"
    
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Image.asset('assets/image/quran_header_icn.png',height: MediaQuery.sizeOf(context).height *0.30,),
Expanded(child: ListView.separated(
    padding:EdgeInsets.only(top: 20),
    itemBuilder: (context,index)=> InkWell(
      onTap: ()=>Navigator.of(context).pushNamed(SuraQuran.routeName,
      arguments:SuraArum(name: SuraNmame[index], index: index),
      ),
      child: Text(SuraNmame[index],textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.headline1),
    )
  ,itemCount: SuraNmame.length,separatorBuilder:(context,_)=>SizedBox(height: 12,))
),
      ],);
  }
}
class SuraArum{
  String name;
  int index;
  SuraArum({required this.name , required this.index});
}