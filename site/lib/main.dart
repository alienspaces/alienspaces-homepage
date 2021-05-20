import 'package:flutter/material.dart';

import 'package:site/theme.dart';
import 'package:site/pages/home.dart';

void main() {
  runApp(SiteApp());
}

class SiteApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SiteAppState();
}

class _SiteAppState extends State<SiteApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alienspaces - Principal Engineer/Architect',
      theme: getTheme(context),
      home: Navigator(
        pages: [
          MaterialPage(
            key: ValueKey('HomePage'),
            child: HomePage(),
          ),
        ],
        onPopPage: (route, result) {
          if (!route.didPop(result)) {
            return false;
          }

          return true;
        },
      ),
    );
  }
}
