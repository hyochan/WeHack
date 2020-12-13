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
          Image(
            image: Asset.Images.about,
            width: double.infinity,
          ),
          Container(
            constraints: BoxConstraints(maxWidth: 1005),
            margin: EdgeInsets.only(top: 115, bottom: 68),
            child: Column(
              children: [
                Text(
                  'WeHack은 어떻게 진행되나요?',
                  style: Theme.of(context).textTheme.bodyText1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 68),
                  child: Text(
                    '첫 한달은 조별로 사람들을 모아서 저희가 인큐베이팅을 진행하려고 합니다. 공부거리도 주고 네트워킹을 하는 시간이 필요해보입니다. 각 조별로 진행하면서 문제점을 수립하면서 채워주는 식으로 진행해보면 좋을 것 같습니다. no-show를 방지하기 위한 최소 참가비는 3만원입니다. 다음으로는 조별로 자유도를 부여하여 각자가 알아서 잘 할 수 있도록 응원하면서 지켜보는 시간입니다. 4월 23일 기점으로 최종 결과물 제출해주셔야 합니다. 4월 29일 (금) 시상식 홈페이지에 명예의전당에 올려집니다',
                    style: Theme.of(context).textTheme.bodyText2,
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
