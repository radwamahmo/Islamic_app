
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:untitled/providers/app_config_provider.dart';
import 'package:untitled/splash_screen.dart';

import 'home/hadeth/hadeth_details_screen.dart';
import 'home/quran/sura_details_screen.dart';
import 'home_screen.dart';
import 'my_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context)=> AppConfigProvider() ,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SimpleAnimation.routeName,
      routes: {
        SimpleAnimation.routeName:(context)=> SimpleAnimation(),
        HomeScreen.routeName:(context)=> HomeScreen(),
        SuraDetailsScreen.routeName:(context)=> SuraDetailsScreen(),
        HadethDetailsScreen.routeName :(context)=> HadethDetailsScreen()
      },
      home: SimpleAnimation() ,


      theme: MyTheme.LightMode,
      themeMode: provider.appTheme,
      darkTheme:  MyTheme.DarkMode,
      locale:  Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );


  }

}

