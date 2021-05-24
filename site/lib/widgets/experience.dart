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

    // Page Header
    widgetList.add(
      Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.all(10),
        child: Text(
          'Professional Experience',
          style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 30),
        ),
      ),
    );

    // Professional experience
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
                child: Text(
                  experience.position,
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
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
                padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
                child: Text(
                  experience.project,
                  style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
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
                padding: EdgeInsets.fromLTRB(10, 5, 50, 10),
                child: ExperienceTechnologyWidget(technology: experience.technology),
              ),
            ],
          ),
        ),
      );
    });

    // Page Footer
    widgetList.add(
      // Footer
      Container(
        alignment: Alignment.center,
        padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
        child: Text('~ Built with Flutter by ALIENSPACES ~'),
      ),
    );
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
