import 'package:flutter/material.dart';

import 'package:site/icons.dart';

class Social {
  IconData icon;
  String url;
  Social({
    required this.icon,
    required this.url,
  });
}

List<Social> getSocialList() {
  List<Social> socialList = [
    Social(
      icon: CustomIcons.github_square,
      url: 'https://github.com/alienspaces',
    ),
    Social(
      icon: CustomIcons.gitlab,
      url: 'https://gitlab.com/alienspaces',
    ),
    Social(
      icon: CustomIcons.twitter_square,
      url: 'https://twitter.com/Alien_Spaces',
    ),
    Social(
      icon: CustomIcons.linkedin,
      url: 'https://www.linkedin.com/in/alienspaces/',
    ),
  ];
  return socialList;
}
