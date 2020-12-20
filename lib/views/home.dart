import 'package:flutter/material.dart';

import '../utils/general.dart';
import './shared/top_menu.dart' show TopMenu;
import 'shared/section_intro1.dart' show SectionIntro1;
import 'shared/section_intro2.dart' show SectionIntro2;
import 'shared/section_about.dart' show SectionAbout;
import 'shared/section_challenge.dart' show SectionChallenge;
import 'shared/section_prize.dart' show SectionPrize;
import 'shared/section_mentors.dart' show SectionMentors;
import 'shared/section_partners.dart' show SectionPartners;
import 'shared/section_host.dart' show SectionHost;

class Home extends StatelessWidget {
  Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Stack(
        children: [
          Positioned(
              child: ListView(
            children: [
              Container(height: 120),
              SectionIntro1(),
              SectionIntro2(),
              SectionChallenge(),
              SectionAbout(),
              SectionPrize(),
              SectionMentors(),
              SectionPartners(),
              SectionHost(),
            ],
          )),
          Positioned(
            child: TopMenu(),
          ),
        ],
      ),
    );
  }
}
