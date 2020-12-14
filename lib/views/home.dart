import 'package:flutter/material.dart';

import '../utils/general.dart';
import './shared/top_menu.dart' show TopMenu;
import 'shared/section_intro1.dart' show SectionIntro1;
import 'shared/section_intro2.dart' show SectionIntro2;
import 'shared/section_about.dart' show SectionAbout;
import 'shared/section_challenge.dart' show SectionChallenge;
import 'shared/section_prize.dart' show SectionPrize;

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
        child: ListView(
          children: [
            TopMenu(),
            SectionIntro1(),
            SectionIntro2(),
            SectionChallenge(),
            SectionAbout(),
            SectionPrize(),
          ],
        ),
      ),
    );
  }
}
