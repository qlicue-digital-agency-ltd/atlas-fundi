import 'package:atlas_fundi/components/cards/wallet_balance_card.dart';
import 'package:atlas_fundi/components/charts/bar_charts.dart';
import 'package:flutter/material.dart';

class StatisticsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('My Earnings'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              WalletBalanceCard(),
              Container(height: 200, child: GroupedFillColorBarChart.withData())
            ]),
          )
        ],
      ),
    );
  }
}
