import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/views/shared/button.dart';
import 'package:wehack/utils/general.dart' show General;

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

    return Container(
      height: 140,
      width: double.infinity,
      color: Theme.of(context).backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(maxWidth: 180),
              padding: EdgeInsets.only(top: 20, left: 20),
              child: FittedBox(
                fit: BoxFit.fitWidth,
                child: Text(
                  'WeHack',
                  style: Theme.of(context).textTheme.headline2.merge(TextStyle(
                        fontSize: 48,
                        height: 1.3,
                      )),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Flexible(
            child: Button(
              boxConstraints: BoxConstraints(maxWidth: 180),
              backgroundColor: Theme.of(context).backgroundColor,
              borderColor: Theme.of(context).textTheme.subtitle1.color,
              borderWidth: 1,
              width: 180,
              height: 60,
              text: localization.trans('REGISTER'),
              textStyle: Theme.of(context).textTheme.caption.merge(TextStyle(
                    fontSize: 20,
                  )),
              onPress: () {
                // Fluttertoast.showToast(
                //     msg: '준비중입니다. 2021년 1월 1일부터 신청 가능합니다.',
                //     toastLength: Toast.LENGTH_SHORT,
                //     gravity: ToastGravity.CENTER,
                //     timeInSecForIosWeb: 1,
                //     backgroundColor: Colors.red,
                //     textColor: Colors.white,
                //     fontSize: 16.0),
                General.instance.registerForMenti();
              },
            ),
          ),
        ],
      ),
    );
  }
}
