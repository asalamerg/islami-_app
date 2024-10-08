
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/addtheme.dart';
import 'package:islami/lodeing/Loding.dart';
import 'package:islami/tabs/quran/quran.dart';
import 'package:islami/tabs/setting/provider_setting.dart';
import 'package:provider/provider.dart';

class SuraQuran extends StatefulWidget{
  static const String routeName='sura_quran';

  const SuraQuran({super.key});

  @override
  State<SuraQuran> createState() => _SuraQuranState();
}

class _SuraQuranState extends State<SuraQuran> {
  List<String>ayat=[];
  late SuraArum args;

  @override
  Widget build(BuildContext context) {
     args=ModalRoute.of(context)!.settings.arguments as SuraArum;

  if(ayat.isEmpty){
    lodefile();
  }
  ProviderSetting providerSetting=Provider.of<ProviderSetting>(context);
 return
   Container(
       decoration: BoxDecoration(
           image: DecorationImage(image: AssetImage('assets/image/${Provider.of<ProviderSetting>(context).backgrountname}.png'),
             fit: BoxFit.fill,
           )

       ),
       child: Scaffold(
           appBar: AppBar(title: Text(args.name,style: Theme.of(context).textTheme.displayLarge, )),

       body: Container(
         padding: EdgeInsets.all(24),
         margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.08 ,horizontal: 30),
         decoration: BoxDecoration(
           color:providerSetting.isDark ? AddTheme.darkPrimary : AddTheme.White,
         borderRadius:BorderRadius.all(Radius.circular(25)),
         ),
         child:ayat.isEmpty ?Lodingg():
         ListView.builder(itemBuilder: (_,index)=>Text(ayat[index],style: Theme.of(context).textTheme.displayMedium,
           textAlign:TextAlign.center,
           ),

           itemCount:ayat.length,),
       ),
       ));

  }

  Future<void> lodefile() async{
//await Future.delayed(Duration(seconds: 2));
   String suar=  await rootBundle.loadString('assets/suar_quran/${args.index +1}.txt');
  ayat= suar.split('\r\n');
  setState(() {});

  }
}