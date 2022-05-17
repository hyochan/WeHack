import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class PrizeBox extends StatelessWidget {
  final Key key;
  final String label;
  final String title;
  final String text;
  final Color color;
  final AssetImage prizeImage;
  final EdgeInsets margin;

  const PrizeBox({
    this.key,
    @required this.label,
    @required this.title,
    @required this.text,
    @required this.color,
    @required this.prizeImage,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 401),
      margin: this.margin,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 401,
            // height: 300,
            padding: EdgeInsets.only(top: 60, bottom: 20),
            decoration: BoxDecoration(
              color: this.color,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SelectableText(
                  this.label,
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          fontSize: 20,
                          color: Color(0xFF5C5C5C),
                        ),
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 24, bottom: 10),
                  child: SelectableText(
                    this.title,
                    style: Theme.of(context).textTheme.bodyText1.merge(
                          TextStyle(
                            fontSize: 64,
                            color: Color(0xFF5C5C5C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
                ),
                SelectableText(
                  this.text,
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Image(
                    image: this.prizeImage,
                    width: 160,
                    height: 160,
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

class SectionPrize extends StatelessWidget {
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
            constraints: BoxConstraints(maxWidth: 1088),
            margin: EdgeInsets.only(top: 28, bottom: 100),
            child: Column(
              children: [
                SelectableText(
                  localization.trans('PRIZE'),
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 38, bottom: 44),
                  child: SelectableText(
                    '총 상금 350만원의 주인공이 되세요! ',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        PrizeBox(
                          prizeImage: Asset.Icons.prizeGold,
                          color: Color.fromARGB(255, 192, 239, 255),
                          label: '1등',
                          title: '\$2,000',
                          text: '(1팀 수상) ',
                        ),
                        PrizeBox(
                          prizeImage: Asset.Icons.prizeSilver,
                          color: Color.fromARGB(255, 237, 237, 237),
                          label: '2등',
                          title: '\$1,000',
                          text: '(1팀 수상) ',
                          margin: EdgeInsets.symmetric(horizontal: 33),
                        ),
                        PrizeBox(
                          prizeImage: Asset.Icons.prizeBronze,
                          color: Color.fromARGB(255, 231, 249, 255),
                          label: '3등',
                          title: '\$500',
                          text: '(1팀 수상) ',
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
