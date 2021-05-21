import 'package:flutter/material.dart';

import 'package:site/widgets/header.dart';
import 'package:site/widgets/experience.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderWidget(),
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
