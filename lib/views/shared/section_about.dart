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
                  child: Text(
                    'HackaTalk는 dooboolab 커뮤니티에서 개발 한 오픈 소스 채팅 앱입니다.\n\n우리는 2020 년에 최신 기술을 공유하는 데 중점을 둡니다. 기술을 다루고 함께 개발하는 것을 목표로했기 때문에 요즘 존재하는 기존 채팅 앱에 비해 약해 보일 수 있습니다. 그러나 우리는 채팅 앱에서 가능성을 공유하기 위해 개발을 계속하고자합니다.\n\n소스코드는 GitHub 저장소 (https://github.com/dooboolab/hackatalk)에서 사용할 수 있으며 더 많은 사람들과 함께 작업 할 수 있기를 희망합니다. 우리는 채팅 앱을 구축하는 것이 오픈 소스 프로젝트 내에서 의사 소통하기 매우 쉬운 프로젝트라고 느꼈습니다. 모든 사람들이 이미 채팅 앱에서 UX에 대해 높은 이해를 갖고 있기 때문입니다. 따라서 아주 기초적인 부분에서부터 문제해결하는것에 집중할 수 있습니다.\n\n평소 채팅 앱에서 구현하고 싶은 기능이 있으셨나요?\nWeHack 에서 함께 만들어나가보세요!',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
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
