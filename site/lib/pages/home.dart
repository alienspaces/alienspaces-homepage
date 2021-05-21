import 'package:flutter/material.dart';

import 'package:site/widgets/experience.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Text(
            'Alienspaces',
            style: Theme.of(context).textTheme.headline4?.copyWith(
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
        child: ListView(
          children: [
            ExperienceWidget(),
          ],
        ),
      ),
    );
  }
}
