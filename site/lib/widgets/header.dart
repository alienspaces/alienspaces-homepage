import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:site/models/social.dart';
import 'package:site/models/personal.dart';

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
    var personal = getPersonal();

    return AppBar(
      centerTitle: false,
      titleSpacing: 5,
      title: Container(
        child: Row(
          children: [
            Container(
              width: 50,
              height: 50,
              margin: EdgeInsets.only(top: 5, right: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  'assets/images/alienspaces-small.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${personal.pseudonym}',
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                  Text(
                    '(${personal.name})',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                  ),
                ],
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
