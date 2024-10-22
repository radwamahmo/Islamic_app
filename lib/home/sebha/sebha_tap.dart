
import 'dart:ffi';

import 'package:flutter/material.dart';


class SebhaTab extends StatefulWidget{
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int counter = 0;



  @override
  Widget build(BuildContext context) {
    

    return
       Center(
         child:Column(

           children: [
             Image.asset('assets/images/head_sebha_logo.png'),

             Image.asset('assets/images/body_sebha_logo.png'),


             Text('عدد التسبيحات',
                 style: Theme.of(context).textTheme.titleLarge
             ),
             Text(
               '$counter',
               style: Theme.of(context).textTheme.titleLarge,

             ),
             ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xffB7935F)
                ),
                 onPressed: () {
                   counter++;
                   setState(() {
                     counter++;
                   });

                   print(counter);
                 },
                 child:  Icon(Icons.add,)),

             Text(
               'سبحان الله',
               style: Theme.of(context).textTheme.titleLarge,

             )
 

    

         



           ],
         ) ,
       )  ;
  }

  Change(){
    if(counter == 33){
      print(Text(
        'سبحان الله',
        style: Theme.of(context).textTheme.titleLarge,

      )
      );
    }else if(counter ==66 ){
      print(Text(
        'الحمد لله',
        style: Theme.of(context).textTheme.titleLarge,

      )
      );
    }else if(counter == 99){
      print(Text(
        'الله أكبر',
        style: Theme.of(context).textTheme.titleLarge,

      )
      );
    }

  } 
}


