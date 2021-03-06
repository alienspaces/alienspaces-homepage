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
          padding: EdgeInsets.only(left: 5, right: 5),
          height: 40,
          decoration: BoxDecoration(
            color: Color(0xFF5C6784),
            border: Border.all(
              color: Color(0xFF5C6784),
              width: 1,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          child: TextButton(
            onPressed: () => _launchURL(technology.url),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 5),
                  child: Image.asset(
                    'assets/images/${technology.imageName}',
                    fit: BoxFit.contain,
                  ),
                ),
                Text(
                  technology.name,
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(color: Theme.of(context).colorScheme.onPrimary),
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
