import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const CustomAppBar({Key key, @required this.scaffoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Container(
              child: InkWell(
                onTap: () {
                  print('object');
                  scaffoldKey.currentState.openDrawer();
                },
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                    'assets/img/woman.jpeg',
                  ),
                ),
              ),
            ),
            Spacer(),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 1 / 3,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    width: 30,
                  ),
                  Text('Online',
                      style: TextStyle(color: Colors.white, fontSize: 15)),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                    child: Icon(
                      Icons.person_pin_circle,
                      color: Colors.blue,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: Icon(
                Icons.search,
                color: Colors.black54,
              ),
            ),
          ]),
          Divider(
            indent: 10,
            endIndent: 10,
            color: Colors.black54,
          )
        ],
      ),
    );
  }
}
