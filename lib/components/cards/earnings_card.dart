import 'package:atlas_fundi/components/text_field/vertical_text.dart';
import 'package:flutter/material.dart';

class EarningsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 6.0,
            ),
          ],
          color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Earned Today', style: TextStyle(color: Colors.black45)),
          Text(
            'TSH 200,000 /-',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              VerticalText(
                title: 'Total Works',
                subtitle: '15',
              ),
              VerticalText(
                title: 'Time Online',
                subtitle: '15h 30m',
              ),
              VerticalText(
                title: 'Avg Rate',
                subtitle: '4.9',
              )
            ],
          )
        ],
      ),
    );
  }
}
