
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/hadith_page.dart';
import 'package:islami/lodeing/Loding.dart';
import 'package:islami/tabs/hadeth/ahadth.dart';

class Hadeth extends StatefulWidget{
  const Hadeth({super.key});

  @override
  State<Hadeth> createState() => _HadethState();
}

class _HadethState extends State<Hadeth> {
  List<Ahadth>ahadth=[];

  @override
  Widget build(BuildContext context) {
    if(ahadth.isEmpty){LodingHadith();}
    return Column(children: [
      Image.asset('assets/image/hadith_header.png',fit: BoxFit.fill,),
       Container(
            decoration: BoxDecoration(border: Border.all(width: 3,color:Theme.of(context).primaryColor)),
            child: Text('الاحاديث',style: Theme.of(context).textTheme.displayMedium,)),
      Expanded(child: ahadth.isEmpty ?Lodingg():
      ListView.separated(
        padding: const EdgeInsets.only(top: 16),
        itemBuilder: (_,index)=>GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(BageHaith.routeName,arguments: ahadth[index]);
          },
          child: Text(ahadth[index].name,
          style: Theme.of(context).textTheme.displaySmall,
            textAlign: TextAlign.center,
          ),
        ),
        itemCount: ahadth.length,
        separatorBuilder:(context,index)=>const SizedBox(height: 8,) ,)),

    ],);
  }

  Future<void> LodingHadith()async{
    String ahadethfile= await rootBundle.loadString('assets/hadith/ahadeth.txt');// read file
    List<String> ahadthsplit=ahadethfile.split('#'); //create list
   ahadth= ahadthsplit.map((ahadthsplit){
     List<String>ahadthline=ahadthsplit.trim().split('\n');
   String name=ahadthline.first;
   List<String>content=ahadthline.sublist(1,ahadthline.length);
   return Ahadth(name: name,content: content);
   }).cast<Ahadth>().toList();
    setState(() {});

  }
}

