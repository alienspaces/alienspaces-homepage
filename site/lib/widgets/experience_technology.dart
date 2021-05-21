import 'package:flutter/material.dart';

class ExperienceTechnologyWidget extends StatelessWidget {
  final List<String> technology;

  ExperienceTechnologyWidget({Key? key, required this.technology}) : super(key: key);

  // Build technology list
  List<Widget> _buildTechnology(BuildContext context, List<String> technologyList) {
    List<Widget> widgetList = [];
    technologyList.forEach((technology) {
      widgetList.add(
        Container(
          padding: EdgeInsets.fromLTRB(8, 5, 8, 5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: Text(
            technology,
            style: Theme.of(context)
                .textTheme
                .bodyText1
                ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
          ),
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
        children: _buildTechnology(context, technology),
      ),
    );
  }
}
