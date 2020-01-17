import 'package:flutter/material.dart';

class DrawerHeaderCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage('assets/img/woman.jpeg'),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Fundi Chawa',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontSize: 18)),
                  Row(
                    children: <Widget>[
                      Text(
                        '5.0\t',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Divider( color: Colors.white,
          indent: 20,),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
