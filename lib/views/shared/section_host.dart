import 'package:flutter/material.dart';
import 'package:wehack/utils/general.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;
import 'package:wehack/views/shared/button.dart';

class SectionHost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      color: Theme.of(context).scaffoldBackgroundColor,
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
                  child: SelectableText(
                    localization.trans('HOST'),
                    style:
                        Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                              fontSize: 52,
                            )),
                    textAlign: TextAlign.center,
                  ),
                ),
                Material(
                  // needed
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => General.instance.goToGithub(),
                    child: Image(image: Asset.Images.dooboolab),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
