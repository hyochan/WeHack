import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class SectionIntro2 extends StatelessWidget {
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
            margin: EdgeInsets.only(top: 115, bottom: 96),
            child: Column(
              children: [
                Text(
                  'WeHack은 어떻게 진행되나요?',
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 68),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      text: '첫 한달은 조별로 사람들을 모아서 프로젝트 설명 및 인큐베이팅을 진햅합니다. ',
                      style: Theme.of(context).textTheme.subtitle2,
                      children: [
                        TextSpan(
                            text:
                                '다음으로는 공부거리를 만들고 네트워킹을 진행합니다. 그리고 조별로 멘토들과 함께 미션을 수립합니다. '),
                        TextSpan(
                          text:
                              '지속적으로 멘토들과 커뮤니케이션을 통해 좋은 PR을 날릴 수 있도록 최선을 다합니다. PR은 한번에 날릴 필요없고 여러번 나눠서 날려도 무방합니다. ',
                        ),
                        TextSpan(
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          text: 'no-show를 방지하기 위한 최소 참가비는 3만원입니다. ',
                        ),
                        TextSpan(
                          text:
                              '4월 23일 기점으로 최종 결과물 제출해주셔야 합니다. 4월 29일 (금) 시상식 홈페이지에 명예의 전당에 올려집니다.',
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text('우승팀은 파트너 후원사들과 네트워킹 기회가 제공됩니다.',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
