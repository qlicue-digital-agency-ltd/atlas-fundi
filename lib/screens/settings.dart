import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text('Settings'),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Notifications',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.notifications_off),
                        title: Text('Work Notification'),
                        trailing: Switch(
                          onChanged: (bool value) {},
                          value: false,
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.notifications_active),
                        title: Text('Reminders'),
                        trailing: Switch(
                          onChanged: (bool value) {},
                          value: true,
                        ),
                      ),
                    ),
                    Divider(),
                    Text(
                      'Account',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.person),
                        title: Text('Deactivate Account'),
                        trailing: Switch(
                          onChanged: (bool value) {},
                          value: false,
                        ),
                      ),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.delete),
                        title: Text('Delete Account'),
                      ),
                    ),
                    Divider(),
                    SizedBox(
                      height: 100,
                    ),
                    Text(
                      'Logout',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    Card(
                      child: ListTile(
                        leading: Icon(Icons.exit_to_app),
                        title: Text('Logout'),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          )
        ],
      ),
    );
  }
}
