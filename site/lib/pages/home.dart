import 'package:flutter/material.dart';

import 'package:site/widgets/header.dart';
import 'package:site/widgets/email.dart';
import 'package:site/widgets/experience.dart';

class HomePage extends StatelessWidget {
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
            EmailWidget(),
          ],
        ),
      ),
      // floatingActionButton: EmailWidget(),
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
