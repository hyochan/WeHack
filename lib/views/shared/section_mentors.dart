import 'package:flutter/material.dart';
import 'package:wehack/utils/localization.dart' show Localization;
import 'package:wehack/utils/asset.dart' as Asset;

class MentorBox extends StatelessWidget {
  final Key key;
  final String label;
  final String title;
  final String text;
  final Color color;
  final EdgeInsets margin;

  const MentorBox({
    this.key,
    @required this.label,
    @required this.title,
    @required this.text,
    @required this.color,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 401),
      margin: this.margin,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 401,
            height: 300,
            decoration: BoxDecoration(
              color: this.color,
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  this.label,
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          color: Colors.black,
                        ),
                      ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30, bottom: 10),
                  child: Text(
                    this.title,
                    style: Theme.of(context).textTheme.bodyText1.merge(
                          TextStyle(
                            fontSize: 64,
                            color: Color.fromARGB(255, 92, 92, 92),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                  ),
                ),
                Text(
                  this.text,
                  style: Theme.of(context).textTheme.bodyText1.merge(
                        TextStyle(
                          color: Colors.black,
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
