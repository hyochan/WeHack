import 'package:flutter/material.dart';

import '../utils/general.dart';
import './shared/top_menu.dart';
import 'shared/section_intro.dart';

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
            SectionIntro(),
          ],
        ),
      ),
    );
  }
}
