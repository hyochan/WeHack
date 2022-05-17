import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class SideText extends StatelessWidget {
  final Key key;
  final Image image;
  final String title;
  final String text;
  final EdgeInsets margin;

  const SideText({
    this.key,
    @required this.image,
    @required this.title,
    @required this.text,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 340),
      margin: this.margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 24),
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 10),
                  child: this.image,
                ),
                SelectableText(this.title,
                    style: Theme.of(context).textTheme.bodyText1),
              ],
            ),
          ),
          Wrap(children: [
            SelectableText(
              this.text,
              textAlign: TextAlign.start,
              style: Theme.of(context).textTheme.bodyText2,
            )
          ]),
        ],
      ),
    );
  }
}

class SectionChallenge extends StatelessWidget {
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
                  localization.trans('CHALLENGE'),
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 28),
                  child: SelectableText(
                    'HackaTalk을 발전시켜 주세요. ',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                FittedBox(
                  child: Container(
                    margin: EdgeInsets.only(top: 80),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image(
                          image: Asset.Images.hackatalk1,
                          height: 622,
                          width: 350,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 17, right: 45),
                          child: Image(
                            image: Asset.Images.hackatalk2,
                            height: 622,
                            width: 350,
                          ),
                        ),
                        Column(
                          children: [
                            SideText(
                              title: 'Github을 통한 오픈소스 프로젝트 ',
                              text: '여러 사람들과 함께 커밋을 통해 성장하세요. ',
                              image: Image(
                                image: Asset.Icons.food,
                                height: 25.5,
                                width: 23.6,
                              ),
                              margin: EdgeInsets.only(
                                bottom: 55,
                              ),
                            ),
                            SideText(
                              title: 'HackaTalk의 여러 얼굴',
                              text:
                                  '모든 팀에서 각기 다른 방향성을 가진 아이디어를 실제로 구체화하여 HackaTalk에 기여해보세요.',
                              image: Image(
                                image: Asset.Icons.skull,
                                height: 30,
                                width: 29,
                              ),
                              margin: EdgeInsets.only(
                                bottom: 55,
                              ),
                            ),
                            SideText(
                              title: '무궁무진한 발전 가능성',
                              text:
                                  '내가 생각하는 채팅앱의 피쳐들을 이이디에이션 하고 실제 결과물까지 완성하여 실력을 뽐내주세요.',
                              image: Image(
                                image: Asset.Icons.ribbon,
                                height: 41,
                                width: 19,
                              ),
                              margin: EdgeInsets.only(
                                bottom: 55,
                              ),
                            ),
                          ],
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
