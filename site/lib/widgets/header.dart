import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:site/icons.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(60);

  void _launchURL(String url) async =>
      await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        child: Text(
          'Alienspaces',
          style: Theme.of(context).textTheme.headline4?.copyWith(
                color: Theme.of(context).colorScheme.onSecondary,
              ),
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(CustomIcons.gitlab),
          onPressed: () => _launchURL('https://gitlab.com/alienspaces'),
        ),
        IconButton(
          icon: Icon(CustomIcons.mark_github),
          onPressed: () => _launchURL('https://github.com/alienspaces'),
        ),
        IconButton(
          icon: Icon(CustomIcons.twitter),
          onPressed: () => _launchURL('https://twitter.com/Alien_Spaces'),
        ),
        IconButton(
          icon: Icon(CustomIcons.linkedin),
          onPressed: () => _launchURL('https://www.linkedin.com/in/alienspaces/'),
        )
      ],
    );
  }
}
