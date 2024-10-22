import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
import 'package:untitled/home/quran/item_sura_details.dart';
import 'package:untitled/my_theme.dart';

import '../../providers/app_config_provider.dart';


class SuraDetailsScreen extends StatefulWidget {
 static const String routeName = 'SuraDetailsScreen' ;

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String>verses = [];



  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(verses.isEmpty){
      LoadFile(args.index);
    }

    return Stack(
        children: [
          provider.isDarkMode()?
          Image.asset('assets/images/dark_bg.png')

              :

          Image.asset('assets/images/default_bg.png'),
    Scaffold(

    appBar: AppBar(


    title: Text(args.name,
    style: Theme.of(context).textTheme.titleLarge,
    ),
    ),
     body: verses.isEmpty ?
     Center(child:CircularProgressIndicator(
       color: MyTheme.primarylight,
     ) ,)
        :
     Container(
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
        return ItemSuraDetails(content :verses[index],index: index,);

         },
      itemCount: verses.length,
    )
    ),
    )


    ]
    );
  }
  void  LoadFile (int index)async{
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>lines =  content.split('\n');
    for(int i=0; i<lines.length ; i++) {


    }
    verses = lines ;
    setState(() {

    });

  }

}

class SuraDetailsArgs{
  String name ;
  int index ;
  SuraDetailsArgs({required this.name , required this.index});

}