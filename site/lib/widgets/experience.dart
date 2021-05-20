import 'package:flutter/material.dart';

import 'package:site/models/experience.dart';

class ExperienceWidget extends StatelessWidget {
  // Build description list
  List<Widget> _buildDescription(BuildContext context, List<String> descriptionList) {
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

  // Build technology list
  List<Widget> _buildTechnology(BuildContext context, List<String> technologyList) {
    List<Widget> widgetList = [];
    technologyList.forEach((technology) {
      widgetList.add(
        Container(
          padding: EdgeInsets.all(5),
          margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.secondaryVariant,
              width: 2,
            ),
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

  // Build content
  List<Widget> _buildContent(BuildContext context) {
    List<Widget> widgetList = [];
    var experienceList = getExperienceList();
    experienceList.reversed.forEach((experience) {
      widgetList.add(
        Container(
          child: Column(
            children: <Widget>[
              // Position
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  experience.position,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
              // Years
              Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(experience.yearStart),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text('-'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Text(experience.yearEnd),
                    ),
                  ],
                ),
              ),
              // Project
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Text(
                  experience.project,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              // Description
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildDescription(context, experience.description),
                ),
              ),
              // Technology
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: _buildTechnology(context, experience.technology),
                ),
              ),
            ],
          ),
        ),
      );
    });
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _buildContent(context),
      ),
    );
  }
}
