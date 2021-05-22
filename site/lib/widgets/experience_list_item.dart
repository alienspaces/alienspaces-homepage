import 'package:flutter/material.dart';

class ExperienceListItemWidget extends StatelessWidget {
  final String item;

  ExperienceListItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.8;

    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
      child: Row(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.circle,
              size: 8,
            ),
          ),
          Container(
            width: width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
