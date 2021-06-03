import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class SectionPartners extends StatelessWidget {
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
            constraints: BoxConstraints(maxWidth: 1200),
            margin: EdgeInsets.only(top: 28, bottom: 100),
            child: Column(
              children: [
                Text(
                  localization.trans('PARTNERS') + "  ",
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40, bottom: 44),
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    runSpacing: 28,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Image(
                          image: Asset.Icons.networkDefines,
                          height: 72,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 24),
                        child: Image(
                          image: Asset.Icons.haii,
                          height: 44,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 8),
                        child: Image(
                          image: Asset.Icons.modusign,
                          fit: BoxFit.cover,
                          height: 56,
                          width: 300,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 32),
                        child: Image(
                          image: Asset.Icons.vntg,
                          height: 48,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Image(
                          image: Asset.Icons.artifacts,
                          height: 48,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Image(
                          image: Asset.Icons.collectors,
                          height: 32,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 40),
                        child: Image(
                          image: Asset.Icons.megazoneCloud,
                          height: 48,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 28),
                        child: Image(
                          image: Asset.Icons.turing,
                          height: 30,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: RichText(
                    text: TextSpan(
                      text: '파트너가 되는 방법은 ',
                      style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).textTheme.bodyText1.color),
                      children: [
                        TextSpan(
                          text: 'hyo@dooboolab.com',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launch('mailto:hyo@dooboolab.com');
                            },
                        ),
                        TextSpan(
                          text: ' 이메일로 문의주세요.',
                        ),
                      ],
                    ),
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
