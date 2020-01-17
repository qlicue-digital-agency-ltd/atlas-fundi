import 'package:flutter/material.dart';

class VerticalText extends StatelessWidget {
  final String title;
  final String subtitle;

  const VerticalText({Key key, @required this.title, @required this.subtitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(title),
        Text(
          subtitle,
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}
