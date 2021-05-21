import 'package:flutter/material.dart';

class ExperienceProjectYearsWidget extends StatelessWidget {
  final String yearStart;
  final String yearEnd;

  ExperienceProjectYearsWidget({Key? key, required this.yearStart, required this.yearEnd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            child: Text(yearStart),
          ),
          Container(
            child: Text('-'),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Text(yearEnd),
          ),
        ],
      ),
    );
  }
}
