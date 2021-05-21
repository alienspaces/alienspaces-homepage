import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:site/models/technology.dart';

class ExperienceTechnologyWidget extends StatelessWidget {
  final List<Technology> technology;

  ExperienceTechnologyWidget({Key? key, required this.technology}) : super(key: key);

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  // Build technology list
  List<Widget> _buildTechnology(BuildContext context, List<Technology> technologyList) {
    List<Widget> widgetList = [];
    technologyList.forEach((technology) {
      widgetList.add(
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
          ),
          child: TextButton(
            onPressed: () => _launchURL(technology.url),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 5),
                  child: Image.asset(
                    'images/${technology.imageName}',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  technology.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Theme.of(context).colorScheme.onSecondary),
                ),
              ],
            ),
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
