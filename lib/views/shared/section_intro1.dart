import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/views/shared/button.dart';

class SectionIntro1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 17),
            child: Text(
              'WeHack 2021',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 460),
            margin: EdgeInsets.only(bottom: 68),
            child: Text(
              '실리콘벨리 그리고 국내외 스타트업들에서\n가장 핫한 기술 스택을 활용하여 개발한\n채팅 어플리케이션을\n오픈소스를 통해 기여해보세요.',
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('참가신청', style: Theme.of(context).textTheme.subtitle1),
                Text('~ 1월 23일', style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 48),
            child: Column(
              children: [
                Text('행사기간', style: Theme.of(context).textTheme.subtitle1),
                Text('2월 1일 ~ 4월 23일',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 48, bottom: 85),
            child: Column(
              children: [
                Text('심사발표', style: Theme.of(context).textTheme.subtitle1),
                Text('4월 29일', style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Button(
                  backgroundColor: Theme.of(context).primaryColor,
                  width: 161,
                  text: localization.trans('PARTICIPATE'),
                  textStyle: Theme.of(context).textTheme.caption,
                  onPress: () => {},
                ),
                Button(
                  margin: EdgeInsets.only(left: 30),
                  backgroundColor: Theme.of(context).backgroundColor,
                  borderColor: Theme.of(context).textTheme.subtitle1.color,
                  borderWidth: 1,
                  width: 161,
                  text: localization.trans('APPLY_FOR_MENTOR'),
                  textStyle: Theme.of(context).textTheme.caption,
                  onPress: () => {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
