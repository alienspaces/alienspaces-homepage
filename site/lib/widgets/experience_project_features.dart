import 'package:flutter/material.dart';

import 'package:site/widgets/experience_list_item.dart';

class ExperienceProjectFeaturesWidget extends StatelessWidget {
  final List<String> features;

  ExperienceProjectFeaturesWidget({Key? key, required this.features}) : super(key: key);

  // Build features list
  List<Widget> _buildContent(BuildContext context, List<String> featuresList) {
    List<Widget> widgetList = [];
    featuresList.forEach((feature) {
      widgetList.add(
        ExperienceListItemWidget(item: feature),
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
        children: _buildContent(context, features),
      ),
    );
  }
}
