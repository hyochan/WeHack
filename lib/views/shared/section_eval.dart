import 'package:flutter/material.dart';
import 'package:wehack/utils/general.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;
import 'package:wehack/views/shared/button.dart';

class EvalBox extends StatelessWidget {
  final Key key;
  final AssetImage icon;
  final String title;
  final String content;
  final EdgeInsets margin;

  const EvalBox({
    this.key,
    @required this.icon,
    @required this.title,
    @required this.content,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: this.margin,
      child: Column(
        children: [
          Row(
            children: [
              Image(
                fit: BoxFit.cover,
                image: this.icon,
                width: 32,
                height: 32,
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(
                  this.title,
                  style: Theme.of(context).textTheme.subtitle1,
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 18),
            child: Text(
              this.content,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        ],
      ),
    );
  }
}

class SectionEval extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: EdgeInsets.only(top: 68, bottom: 117, left: 32, right: 32),
      constraints: BoxConstraints(maxWidth: 835),
      child: Column(
        children: [
          Container(
            child: Text(
              Localization.of(context).trans('EVALUATION') + ' ',
              style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                    fontSize: 52,
                  )),
              textAlign: TextAlign.center,
            ),
            margin: EdgeInsets.only(bottom: 104),
          ),
          Wrap(
            spacing: 25,
            runSpacing: 25,
            alignment: WrapAlignment.center,
            children: [
              EvalBox(
                icon: Asset.Icons.evalThunder,
                title: '1. UI/UX ',
                content: '사용자 경험과 디자인에 어떤 WOW 팩터가 있나요? ',
              ),
              EvalBox(
                icon: Asset.Icons.evalCode,
                title: '2. 코드품질 ',
                content: '읽기 편하고 테스트 커버리지가 높은가요? 돌아가기만 하는 코드가 아닌 확장성 등이 고려되었나요? ',
              ),
              EvalBox(
                icon: Asset.Icons.evalFire,
                title: '3. 열정',
                content: '얼마나 프로젝트에 애착을 가졌나요? 증명이 어떻게 되었나요? ',
              ),
              EvalBox(
                icon: Asset.Icons.evalDoc,
                title: '4. 팀워크',
                content: '다 함께 같이 가고 있나요? ',
              ),
              EvalBox(
                icon: Asset.Icons.evalBulb,
                title: '5. 아이디어',
                content: '확기적인 아이디어인가요? ',
              ),
              EvalBox(
                icon: Asset.Icons.evalBow,
                title: '6. 장인정신',
                content: '한땀 한땀 다양한 상황에 대한 고려가 있었나요? ',
              ),
            ],
          )
        ],
      ),
    );
  }
}
