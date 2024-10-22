import 'package:flutter/material.dart';
import 'package:untitled/home/hadeth/hadeth_details_screen.dart';


import 'hadeth_tap.dart';

class ItemHadethName extends StatelessWidget {

  Hadeth hadeth ;

  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
       onTap: () {
       Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
            arguments: hadeth
        );
      },
      child: Text(hadeth.title,
        style: Theme
            .of(context)
            .textTheme
            .titleMedium,
        textAlign: TextAlign.center,

      ),
    );
  }
}