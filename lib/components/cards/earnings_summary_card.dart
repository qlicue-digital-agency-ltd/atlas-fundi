import 'package:flutter/material.dart';

class EarningsSummaryCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 4,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Earnings',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'TSH 280,000 /-',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              Divider(),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Work Earnings',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'TSH 280,000 /-',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Taxes',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'TSH 48,000 /-',
                    style: TextStyle(fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
