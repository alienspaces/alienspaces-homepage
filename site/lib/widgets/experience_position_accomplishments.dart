import 'package:flutter/material.dart';

import 'package:site/widgets/experience_list_item.dart';

class ExperiencePositionAccomplishmentsWidget extends StatelessWidget {
  final List<String> accomplishments;

  ExperiencePositionAccomplishmentsWidget({Key? key, required this.accomplishments})
      : super(key: key);

  // Build accomplishments list
  List<Widget> _buildContent(BuildContext context, List<String> accomplishmentsList) {
    List<Widget> widgetList = [];
    accomplishmentsList.forEach((accomplishment) {
      widgetList.add(
        ExperienceListItemWidget(item: accomplishment),
      );
    });
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      margin: EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _buildContent(context, accomplishments),
      ),
    );
  }
}
