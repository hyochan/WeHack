import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class MentorBox extends StatelessWidget {
  final Key key;
  final String name;
  final String job;
  final String organization;
  final Image image;
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
      constraints: BoxConstraints(maxWidth: 250),
      margin: this.margin,
      child: Column(
        children: [
          this.image,
          Text(this.name),
          Text(this.job),
          Text(this.organization),
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
                  margin: EdgeInsets.only(top: 28, bottom: 44),
                  child: Text(
                    'WeHack 참가팀들을 위해 16명의 현업 멘토들이 멘토로 참여하고 있습니다.',
                    style: Theme.of(context).textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  child: Wrap(
                    children: [
                      MentorBox(
                        name: 'Hyo',
                        job: 'developer',
                        organization: 'dooboolab',
                        image: Image(
                          image: Asset.Images.hackatalk1,
                          width: 50,
                          height: 50,
                        ),
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
