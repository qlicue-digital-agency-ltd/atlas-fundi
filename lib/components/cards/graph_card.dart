import 'package:atlas_fundi/components/charts/bar_charts.dart';
import 'package:flutter/material.dart';

class GraphCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text('JAN, 20, 2020',
                    style: TextStyle(fontWeight: FontWeight.w400)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios, color: Colors.black45),
                      onPressed: () {},
                    ),
                    Spacer(),
                    Text('TSH 980,000 /-',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                    Spacer(),
                    IconButton(
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black45,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                Container(
                    height: 400, child: GroupedFillColorBarChart.withData()),
                Divider(
                  indent: 10,
                  endIndent: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Total Works'),
                        Text(
                          '140',
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Time Online'),
                        Text('6d 18h',
                            style: TextStyle(fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}
