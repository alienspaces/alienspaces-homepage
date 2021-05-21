import 'package:flutter/material.dart';

class ExperiencePositionDescriptionWidget extends StatelessWidget {
  final List<String> description;

  ExperiencePositionDescriptionWidget({Key? key, required this.description}) : super(key: key);

  // Build description list
  List<Widget> _buildContent(BuildContext context, List<String> descriptionList) {
    List<Widget> widgetList = [];
    descriptionList.forEach((description) {
      widgetList.add(
        Container(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 5),
          child: Text(description),
        ),
      );
    });
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 5.0, // gap between adjacent chips
        runSpacing: 5.0, // gap between lines
        children: _buildContent(context, description),
      ),
    );
  }
}
