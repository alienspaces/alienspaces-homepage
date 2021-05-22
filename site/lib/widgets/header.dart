import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:site/models/social.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(60);

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  List<Widget> _buildContent(BuildContext context) {
    var socialList = getSocialList();
    List<Widget> widgetList = [];
    socialList.forEach((social) {
      widgetList.add(
        IconButton(
          icon: Icon(social.icon),
          visualDensity: VisualDensity.compact,
          iconSize: 24,
          padding: EdgeInsets.fromLTRB(0, 14, 0, 8),
          onPressed: () => _launchURL(social.url),
        ),
      );
    });
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      titleSpacing: 5,
      title: Container(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(top: 5, right: 15),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/alienspaces-small.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Text(
              'Alienspaces',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
            ),
          ],
        ),
      ),
      actionsIconTheme: IconThemeData(),
      actions: _buildContent(context),
    );
  }
}
