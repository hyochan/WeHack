import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class SectionAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 1088),
            margin: EdgeInsets.only(top: 115, bottom: 68),
            child: Column(
              children: [
                Text(
                  localization.trans('ABOUT'),
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 28),
                  child: Text(
                    'HackaTalk은 어떤 프로젝트인가요?',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
