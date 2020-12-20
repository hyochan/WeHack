import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/views/shared/button.dart';

class NavInkText extends StatelessWidget {
  final Key key;
  final String text;
  final VoidCallback onTap;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;

  const NavInkText({
    this.key,
    @required this.text,
    this.onTap,
    this.padding,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: this.margin,
      padding: this.padding,
      child: InkWell(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Text(
            this.text,
            style: Theme.of(context).textTheme.caption,
            textAlign: TextAlign.center,
          ),
        ),
        onTap: this.onTap,
      ),
    );
  }
}

class TopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Localization localization = Localization.of(context);

    List<String> navMenus = [
      localization.trans('CHALLENGE'),
      localization.trans('ABOUT'),
      localization.trans('PRIZES'),
      localization.trans('TIMELINE'),
    ];

    return Container(
      height: 140,
      width: double.infinity,
      child: FittedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 44,
              margin: EdgeInsets.only(left: 72, right: 140),
              child: Text(
                'WeHack',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
            // Container(
            //   height: 44,
            //   child: Row(
            //       children: navMenus
            //           .map((e) => NavInkText(
            //                 text: e ?? '',
            //                 margin: EdgeInsets.only(right: 40),
            //                 onTap: () => {},
            //               ))
            //           .toList()),
            // ),
            Container(
                margin:
                    EdgeInsets.only(left: 52, right: 28, top: 20, bottom: 20),
                child: Button(
                  backgroundColor: Theme.of(context).backgroundColor,
                  borderColor: Theme.of(context).textTheme.subtitle1.color,
                  borderWidth: 1,
                  width: 161,
                  text: localization.trans('REGISTER'),
                  textStyle: Theme.of(context).textTheme.caption,
                  onPress: () => {},
                ))
          ],
        ),
      ),
    );
  }
}
