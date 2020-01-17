import 'package:flutter/material.dart';

typedef CustomTextButtonOnTap = Function();

class CustomTextButton extends StatelessWidget {
  final CustomTextButtonOnTap onTap;
  final String title;
  final String subTitle;
  final double fontSize;

  const CustomTextButton(
      {Key key,
      @required this.onTap,
      @required this.title,
      this.fontSize = 20,
      this.subTitle = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(),
      child: Row(
        children: <Widget>[
          Container(
            height: 50,
            child: Center(
              child: Text(
                title,
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            child: Center(
              child: Text(
                subTitle,
                style:
                    TextStyle(fontSize: fontSize, fontWeight: FontWeight.w300),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
    );
  }
}
