import 'package:flutter/material.dart';

import '../utils/localization.dart' show Localization;
import '../utils/general.dart';
import './shared/top_menu.dart';

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
          ],
        ),
      ),
    );
  }
}
