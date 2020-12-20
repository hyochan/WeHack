import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;
import 'package:url_launcher/url_launcher.dart';

class SectionAbout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 1266),
            margin: EdgeInsets.only(top: 115, bottom: 150),
            child: Column(
              children: [
                Text(
                  'HackaTalk은 어떤 프로젝트인가요?',
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 60),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            'HackaTalk은 dooboolab 커뮤니티에서 개발 한 오픈 소스 채팅 앱입니다.\n\n',
                        style: Theme.of(context).textTheme.subtitle2,
                        children: [
                          TextSpan(
                            text:
                                'HackaTalk은 2020 최신 기술들을 활용하고 공유하기 위한 프로젝트로 출발하였습니다. 제품의 완성도로만 보면 다소 미흡해 볼 수 있을 것입니다. 아직 early 스테이지의 제품이기에 그런 것이고 저희가 힘을 모아 더 나은 채팅앱을 제공했으면 합니다.\n\n소스코드는 ',
                          ),
                          TextSpan(
                            text: 'GitHub 저장소',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launch(
                                    'https://github.com/dooboolab/hackatalk');
                              },
                          ),
                          TextSpan(
                              text:
                                  '에서 사용할 수 있으며 저희는 더욱 더 많은 사람들과 함께 개발할 수 있는 기회를 가질 수 있기를 희망합니다. 저희는 채팅 앱을 구축하는 것이 오픈소스로서 소통하기 좋은 프로젝트임을 느꼈습니다. 모든 사람이 이미 채팅 앱에 대한 높은 UX를 보유하고 있기 때문입니다. 따라서 아주 기초적인 부분부터 문제 해결을 해나갈 수 있을 것입니다.\n\n평소 채팅 앱에서 구현하고 싶은 기능이 있으셨나요?\nWeHack 에서 함께 만들어나가보세요!')
                        ]),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 80),
                  child: FittedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image(
                          image: Asset.Images.screenshot1,
                          height: 622,
                          width: 350,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 33),
                          child: Image(
                            image: Asset.Images.screenshot2,
                            height: 622,
                            width: 350,
                          ),
                        ),
                        Image(
                          image: Asset.Images.screenshot3,
                          height: 622,
                          width: 350,
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
