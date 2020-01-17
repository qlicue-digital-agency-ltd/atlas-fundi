import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String image;
  final double radius;
  final Color textColor;
  final Color iconColor;
  final double padding;
  final String time;
  const ProfileCard(
      {Key key,
      @required this.image,
      this.radius = 40,
      this.textColor = Colors.white,
      this.iconColor = Colors.white,
      this.padding = 50,
      this.time = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: 10,
        ),
        CircleAvatar(
          radius: radius,
          backgroundImage: AssetImage(image),
        ),
        SizedBox(
          width: 10,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Fundi Chawa',
                  style: TextStyle(
                      color: textColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 18)),
              Row(
                children: <Widget>[
                  Text(
                    '5.0\t',
                    style: TextStyle(color: textColor),
                  ),
                  Icon(
                    Icons.star,
                    color: iconColor,
                  ),
                ],
              ),
             
            ],
          ),
        ),
        Spacer(),
        Text(time)
      ],
    );
  }
}
