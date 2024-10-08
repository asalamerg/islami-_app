
import 'package:flutter/material.dart';
import 'package:islami/addtheme.dart';
import 'package:islami/tabs/hadeth/ahadth.dart';
import 'package:islami/tabs/setting/provider_setting.dart';
import 'package:provider/provider.dart';

class BageHaith  extends StatelessWidget {
  static const String routeName = 'hadith';

  @override
  Widget build(BuildContext context) {
    ProviderSetting providerSetting =Provider.of<ProviderSetting>(context);

    Ahadth ahadth=ModalRoute.of(context)!.settings.arguments as Ahadth;
 return Container(
   decoration:  BoxDecoration(
     image: (DecorationImage(image:AssetImage('assets/image/${Provider.of<ProviderSetting>(context).backgrountname}.png')))),
   child:Scaffold(
appBar: AppBar(title:Text(ahadth.name),),
      body: Container(
        padding: const EdgeInsets.all(24),
        margin: EdgeInsets.symmetric(vertical:MediaQuery.of(context).size.height * 0.08 ,horizontal: 30),
        decoration:  BoxDecoration(
         color: providerSetting.isDark ?AddTheme.darkPrimary : AddTheme.White,
          borderRadius:BorderRadius.all(Radius.circular(25)),
        ),
          child: ListView.builder(itemBuilder: (_,index)=>Text(ahadth.content[index],style: Theme.of(context).textTheme.displayMedium,
          textAlign:TextAlign.center,
        ),

          itemCount:ahadth.content.length,),
      ),
   )
   ,);
  }
}