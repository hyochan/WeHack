import 'dart:core';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/views/shared/button.dart';
import 'package:wehack/utils/general.dart' show General;

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
            margin: EdgeInsets.only(top: 50),
            child: Text(
              'WeHack 2021',
              style: Theme.of(context).textTheme.headline1,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40),
            child: InkWell(
              onTap: () => launch('https://prisma.io'),
              child: Text(
                'with Prisma 🧡',
                style: Theme.of(context).textTheme.headline2,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 460),
            margin: EdgeInsets.only(bottom: 68),
            child: Text(
              '실리콘벨리 그리고 국내외 스타트업들에서\n가장 핫한 기술 스택을 활용하여 개발한\n채팅 어플리케이션을\n오픈소스를 통해 기여해보세요.\n해외 유명 기업 Prisma 팀에서 저희와 함께 오프닝을 진행하고 조언을 줄 예정입니다.',
              style: Theme.of(context).textTheme.subtitle1,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            child: Column(
              children: [
                Text('참가신청', style: Theme.of(context).textTheme.subtitle1),
                Text('~ 6월 20일', style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 48),
            child: Column(
              children: [
                Text('행사기간', style: Theme.of(context).textTheme.subtitle1),
                Text('7월 1일 ~ 9월 30일',
                    style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 48, bottom: 85),
            child: Column(
              children: [
                Text('심사발표', style: Theme.of(context).textTheme.subtitle1),
                Text('10월 15일', style: Theme.of(context).textTheme.subtitle2),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 36),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Button(
                    boxConstraints: BoxConstraints(maxWidth: 180),
                    backgroundColor: Theme.of(context).primaryColor,
                    width: 0,
                    text: localization.trans('REGISTER'),
                    textStyle: Theme.of(context).textTheme.caption,
                    onPress: () {
                      // Fluttertoast.showToast(
                      //   msg: '준비중입니다. 2021년 1월 1일부터 신청 가능합니다.',
                      //   toastLength: Toast.LENGTH_SHORT,
                      //   gravity: ToastGravity.CENTER,
                      //   timeInSecForIosWeb: 1,
                      //   backgroundColor: Colors.red,
                      //   textColor: Colors.white,
                      //   fontSize: 16.0,
                      // ),
                      General.instance.registerForMenti();
                    },
                  ),
                ),
                Expanded(
                  child: Button(
                    boxConstraints: BoxConstraints(maxWidth: 180),
                    backgroundColor: Theme.of(context).backgroundColor,
                    borderColor: Theme.of(context).textTheme.subtitle1.color,
                    borderWidth: 1,
                    width: 0,
                    text: localization.trans('APPLY_FOR_MENTOR'),
                    textStyle: Theme.of(context).textTheme.caption,
                    onPress: () {
                      // final Uri uri = Uri(
                      //   scheme: 'mailto',
                      //   path: 'hyo@dooboolab.com',
                      //   queryParameters: {
                      //     'subject': '멘토 지원',
                      //     'body': '자유롭게 소개와 함께 멘토로 지원해주세요.',
                      //   },
                      // );

                      // launch(uri.toString());
                      General.instance.registerForMentor();
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
