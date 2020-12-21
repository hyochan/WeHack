import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class MentorBox extends StatelessWidget {
  final Key key;
  final String name;
  final String job;
  final String organization;
  final AssetImage image;
  final EdgeInsets margin;

  const MentorBox({
    this.key,
    @required this.name,
    @required this.job,
    @required this.organization,
    @required this.image,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: this.margin,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 8),
            child: ClipOval(
              child: Image(
                fit: BoxFit.cover,
                image: this.image,
                width: 120,
                height: 120,
              ),
            ),
          ),
          Text(this.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
          Container(
              margin: EdgeInsets.symmetric(vertical: 2),
              child: Text(this.job,
                  style: TextStyle(
                    fontSize: 14,
                  ))),
          Text(this.organization,
              style: TextStyle(
                fontSize: 14,
              )),
        ],
      ),
    );
  }
}

class SectionMentors extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var localization = Localization.of(context);

    return Container(
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 35, horizontal: 24),
      child: Column(
        children: [
          Container(
            constraints: BoxConstraints(maxWidth: 1308),
            margin: EdgeInsets.only(top: 28, bottom: 100),
            child: Column(
              children: [
                Text(
                  localization.trans('MENTORS'),
                  style: Theme.of(context).textTheme.subtitle1.merge(TextStyle(
                        fontSize: 52,
                      )),
                  textAlign: TextAlign.center,
                ),
                Container(
                  margin: EdgeInsets.only(top: 28, bottom: 52),
                  child: Text(
                    'WeHack 참가팀들을 위해 현업에 계신 분들이 멘토로 참여하고 있습니다.',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Wrap(
                    spacing: 12,
                    runSpacing: 12,
                    children: [
                      MentorBox(
                        name: '박태성',
                        job: '풀스택 개발자',
                        organization: '아이디어샘',
                        image: Asset.Images.geoseong,
                      ),
                      MentorBox(
                        name: '문용필',
                        job: '프론트앤드 개발자',
                        organization: '헤이딜러',
                        image: Asset.Images.nick,
                      ),
                      MentorBox(
                        name: '최종택',
                        job: '프론트앤드 개발자',
                        organization: '노바랩',
                        image: Asset.Images.terry,
                      ),
                      MentorBox(
                        name: '김태영',
                        job: 'CTO',
                        organization: '모두싸인',
                        image: Asset.Images.huy,
                      ),
                      MentorBox(
                        name: '강명구',
                        job: 'CTO',
                        organization: '모니모니',
                        image: Asset.Images.jeff,
                      ),
                    ],
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
