import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:provider/provider.dart';
import 'package:untitled/home/hadeth/item_hadeth_name.dart';

import '../../my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../providers/app_config_provider.dart';


class HadethTab extends StatefulWidget{
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList = [

  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    if(ahadethList.isEmpty){
      loadFile();
    }

    return  Column(
      children: [
        Center( child: Image.asset('assets/images/hadeth_logo.png'),),
        Divider(
          color: provider.isDarkMode()?
          MyTheme.yellowcolor
              :MyTheme.primarylight,
          thickness: 3,
        ),

        Text(AppLocalizations.of(context)!.hadeth,
            style: Theme.of(context).textTheme.titleLarge
        ),
        Divider(
          color: provider.isDarkMode()?
          MyTheme.yellowcolor
              :MyTheme.primarylight,
          thickness: 3,
        ),
        ahadethList.isEmpty?
            Center(child: CircularProgressIndicator(
              color: MyTheme.primarylight,
            ),)
       :
        Expanded(child: ListView.separated(

          separatorBuilder: (context,index){
            return Divider(
              color: provider.isDarkMode()?
              MyTheme.yellowcolor
                  :MyTheme.primarylight,
              thickness: 3,
            );
          },

          itemBuilder: (context , index){
            return ItemHadethName(hadeth: ahadethList[index]);

          },
          itemCount: ahadethList.length,
        ),
        )
      ],
    );

  }

 void loadFile()async{
 String hadethcontent = await rootBundle.loadString('assets/files/ahadeth.txt');
List<String>hadethList = hadethcontent.split('#\r\n');
for(int i=0; i<hadethList.length ; i++){
  print(hadethList[i]);
  List<String>  hadethLines = hadethList[i].split('\n');
  String title = hadethLines[0];
  hadethLines.removeAt(0);
  Hadeth hadeth = Hadeth(title: title, Content:hadethLines);
  ahadethList.add(hadeth);
  setState(() {

  });
}


 }
}
class Hadeth{
  String title ;
  List<String> Content ;
  Hadeth({required this.title,required this.Content} ) ;

}
