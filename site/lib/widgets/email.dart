import 'package:flutter/material.dart';

class EmailWidget extends StatefulWidget {
  @override
  _EmailWidgetState createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  double _emailFieldWidth = 0;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      right: 10,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            AnimatedContainer(
              color: Theme.of(context).colorScheme.primary,
              height: 40,
              width: _emailFieldWidth,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                height: 38,
                margin: EdgeInsets.only(left: 20),
                padding: EdgeInsets.only(bottom: 8, top: 6),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: SelectableText(
                  'alienspaces@alienspaces.com',
                  style: Theme.of(context).textTheme.headline6,
                  toolbarOptions: ToolbarOptions(copy: true),
                ),
              ),
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  if (_emailFieldWidth == 300) {
                    _emailFieldWidth = 0;
                  } else {
                    _emailFieldWidth = 300;
                  }
                });
              },
              child: Container(
                padding: EdgeInsets.all(15),
                child: Icon(Icons.email, size: 34, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
