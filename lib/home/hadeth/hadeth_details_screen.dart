import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/home/hadeth/hadeth_tap.dart';
import 'package:untitled/home/hadeth/item_hadeth_details.dart';
import 'package:untitled/my_theme.dart';


import '../../providers/app_config_provider.dart';


class HadethDetailsScreen extends StatefulWidget {
 static const String routeName = 'HadethDetailsScreen' ;

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {


  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
        children: [
          provider.isDarkMode()?
          Image.asset('assets/images/dark_bg.png')

              :

          Image.asset('assets/images/default_bg.png'),
    Scaffold(

    appBar: AppBar(


    title: Text(args.title,
    style: Theme.of(context).textTheme.titleLarge,
    ),
    ),
     body: Container(
       margin: EdgeInsets.symmetric(
         
         vertical: MediaQuery.of(context).size.height*0.06,
         horizontal: MediaQuery.of(context).size.width*0.05,
       ),
       padding: EdgeInsets.all(4),
       decoration: BoxDecoration(
         color: provider.isDarkMode()?
         MyTheme.primaryDark
             :
         MyTheme.whitecolor,
         borderRadius: BorderRadius.circular(25)
       ),
    child: ListView.builder(

      itemBuilder: (context,index){
        return ItemHadethDetails(content:args.Content[index]);

         },
      itemCount:args.Content.length,
    )
    ),
    )


    ]
    );
  }


}

class SuraDetailsArgs{
  String name ;
  int index ;
  SuraDetailsArgs({required this.name , required this.index});

}