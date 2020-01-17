import 'package:atlas_fundi/screens/history/completed.dart';
import 'package:atlas_fundi/screens/history/scheduled.dart';
import 'package:atlas_fundi/screens/history/upcoming.dart';
import 'package:flutter/material.dart';

class WorkHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Work History'),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: 'Completed',
              ),
              Tab(
                text: 'Upcoming',
              ),
              Tab(
                icon: Icon(Icons.calendar_today),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            CompletedWorkScreen(),
            UpcomingWorkScreen(),
            ScheduleWorkScreen(),
          ],
        ),
      ),
      length: 3,
    );
  }
}
