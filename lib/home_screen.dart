import 'package:flutter/material.dart';


import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';
import 'package:untitled/home/hadeth/hadeth_tap.dart';
import 'package:untitled/home/quran/quran_tap.dart';
import 'package:untitled/home/radio/radio_tap.dart';
import 'package:untitled/home/sebha/sebha_tap.dart';
import 'package:untitled/providers/app_config_provider.dart';
import 'package:untitled/settings/seetings_tap.dart';


class HomeScreen extends StatefulWidget{
  static const String routeName = 'home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedindex = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Stack(
      children: [
        provider.isDarkMode()?
        Image.asset('assets/images/dark_bg.png')

            :

        Image.asset('assets/images/default_bg.png'),
        Scaffold(

          appBar: AppBar(

            title: Text(AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(

             data: Theme.of(context).copyWith(
               canvasColor: Theme.of(context).primaryColor
             ),
            child: BottomNavigationBar(
              currentIndex: selectedindex ,
                onTap: (index){
                 selectedindex = index ;
                 setState(() {

                 });
                },
                items:[
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/icon_quran.png')),
                      label: AppLocalizations.of(context)!.quran ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')),
                      label: AppLocalizations.of(context)!.hadeth ),

                  BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')),
                      label: AppLocalizations.of(context)!.sebha ),
                  BottomNavigationBarItem(icon:ImageIcon(AssetImage('assets/images/icon_radio.png')),
                      label: AppLocalizations.of(context)!.radio ),
                  BottomNavigationBarItem(icon:Icon(Icons.settings),
                     label: AppLocalizations.of(context)!. settings ),

                ]
            ),),
           body: tabs[selectedindex],
        )
      ],
    );
  }
  List<Widget> tabs = [
   QuranTab(),HadethTab(),SebhaTab(),RadioTab(),SettingsTab()
  ];
}