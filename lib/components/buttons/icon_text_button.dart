import 'package:flutter/material.dart';

typedef IconTextButtonOnTap = Function();

class IconTextButton extends StatelessWidget {
  final IconData icon;
  final String title;
  final IconTextButtonOnTap onTap;

  const IconTextButton(
      {Key key,
      @required this.icon,
      @required this.title,
      @required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        child: Row(
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            Text(title)
          ],
        ),
      ),
    );
  }
}
