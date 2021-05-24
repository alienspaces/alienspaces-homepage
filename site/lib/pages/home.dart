import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:site/widgets/header.dart';
import 'package:site/widgets/experience.dart';

class HomePage extends StatelessWidget {
  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: HeaderWidget(),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 5, 5),
        child: Stack(
          children: [
            ListView(
              children: [
                ExperienceWidget(),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _launchURL(
          'mailto:alienspaces@gmail.com?subject=Hello Ben&body=Would you be interested in...',
        ),
        child: Icon(Icons.email, color: Colors.white),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
