
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sebha extends StatefulWidget{
  @override
  State<Sebha> createState() => _SebhaState();
}

class _SebhaState extends State<Sebha> {
   int n=1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [Column(
       /// mainAxisSize: MainAxisSize.max,
        children: [
       Image.asset('assets/image/head_sebha_logo.png'),SizedBox(height: 1,),Image.asset('assets/image/body_sebha_logo.png'),
          SizedBox(height: 20),
       Text('عدد التسبحات ',style: Theme.of(context).textTheme.displayLarge,),
          SizedBox(height: 20),
      ElevatedButton(onPressed:(){setState(() {n=n+1;});}, child: Text(' $n')),
          SizedBox(height: 20),
      Text('سبحان الله',style: Theme.of(context).textTheme.displayLarge,),
    ],)
    ],);

  }
}