
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioTabe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children:[
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [Image.asset('assets/image/radio_image.png',alignment: Alignment.center,)],),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [Text('اذاعة القران الكريم ',style: Theme.of(context).textTheme.displayLarge, )],),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.skip_previous),Icon(Icons.stop_circle),Icon(Icons.skip_next)],),
    ]);

  }
}