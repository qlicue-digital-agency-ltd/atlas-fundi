import 'package:atlas_fundi/components/map/map.dart';
import 'package:flutter/material.dart';

class ScheduledCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        color: Colors.white,
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Wed 20/01/2020'),
            Container(
              height: 130,
              color: Colors.grey,
              child: MapContainer(),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 25,
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
                            fontWeight: FontWeight.w600, fontSize: 15)),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Theme.of(context).primaryColor,
                        ),
                        Text(
                          '5.0\t',
                          style: TextStyle(),
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    Text('Total Cost'),
                    Text(
                      'TSH 12,000 /-',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
