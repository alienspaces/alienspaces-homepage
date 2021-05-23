import 'package:flutter/material.dart';

import 'package:site/widgets/header.dart';
import 'package:site/widgets/experience.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: HeaderWidget(),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
        child: Stack(
          children: [
            ListView(
              children: [
                ExperienceWidget(),
              ],
            ),
            // Experimental floating contact..
            // Positioned(
            //   right: 0,
            //   top: (height / 2) - 100,
            //   child: Container(
            //     width: 50,
            //     height: 100,
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //       color: Theme.of(context).colorScheme.primary,
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(5),
            //         bottomLeft: Radius.circular(5),
            //       ),
            //     ),
            //     child: Icon(
            //       Icons.email,
            //       color: Colors.white,
            //       size: 48,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
