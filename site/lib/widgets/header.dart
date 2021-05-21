import 'package:flutter/material.dart';

import 'package:site/icons.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => new Size.fromHeight(60);

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
          padding: EdgeInsets.only(right: 10),
          icon: Icon(CustomIcons.mark_github),
          onPressed: () => {},
        ),
        IconButton(
          icon: Icon(CustomIcons.twitter),
          onPressed: () => {},
        ),
        IconButton(
          icon: Icon(CustomIcons.linkedin),
          onPressed: () => {},
        )
      ],
    );
  }
}
