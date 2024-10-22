import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Center(
             child:Image.asset('assets/images/radio_image.png'),

           ),
           Text('اذاعة القران الكريم',
               style: Theme.of(context).textTheme.titleLarge
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.skip_previous,
                 size: 40,
               ),
               SizedBox(width: 20,),
               Icon(Icons.play_circle_filled,
                 size: 40 ,
               ),
               SizedBox(width: 20,),
               Icon(Icons.skip_next,
                 size: 40 ,
               ),
             ],
           )
         ],
       ) ;




  }

}