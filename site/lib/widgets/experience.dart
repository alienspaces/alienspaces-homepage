import 'package:flutter/material.dart';

import 'package:site/models/experience.dart';
import 'package:site/widgets/experience_technology.dart';
import 'package:site/widgets/experience_project_years.dart';
import 'package:site/widgets/experience_project_description.dart';
import 'package:site/widgets/experience_project_features.dart';
import 'package:site/widgets/experience_position_description.dart';
import 'package:site/widgets/experience_position_accomplishments.dart';

class ExperienceWidget extends StatelessWidget {
  // Build content
  List<Widget> _buildContent(BuildContext context) {
    List<Widget> widgetList = [];
    var experienceList = getExperienceList();
    experienceList.forEach((experience) {
      widgetList.add(
        Container(
          child: Column(
            children: <Widget>[
              // Position
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                child: Text(experience.position, style: Theme.of(context).textTheme.headline5),
              ),
              // Years
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ExperienceProjectYearsWidget(
                  yearStart: experience.projectYearStart,
                  yearEnd: experience.projectYearEnd,
                ),
              ),
              // Project
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  experience.project,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              // Project Description
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ExperienceProjectDescriptionWidget(
                  description: experience.projectDescription,
                ),
              ),
              // Project Features
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ExperienceProjectFeaturesWidget(
                  features: experience.projectFeatures,
                ),
              ),
              // Position Description
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ExperiencePositionDescriptionWidget(
                  description: experience.positionDescription,
                ),
              ),
              // Position Accomplishments
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ExperiencePositionAccomplishmentsWidget(
                  accomplishments: experience.positionAccomplishments,
                ),
              ),
              // Technology
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: ExperienceTechnologyWidget(technology: experience.technology),
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
