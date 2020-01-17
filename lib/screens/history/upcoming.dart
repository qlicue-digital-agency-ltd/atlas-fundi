import 'package:atlas_fundi/components/cards/upcoming_card.dart';
import 'package:flutter/material.dart';

class UpcomingWorkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: UpcomingCard(),
      ),
    );
  }
}
