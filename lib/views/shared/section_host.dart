import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class SectionHost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 28, bottom: 68),
            constraints: BoxConstraints(maxWidth: 1088),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: Text('Hosted by',
                      style: TextStyle(
                        fontSize: 52,
                        height: 1.3,
                      )),
                ),
                Image(
                  fit: BoxFit.cover,
                  image: Asset.Images.dooboolab,
                  height: 440,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
