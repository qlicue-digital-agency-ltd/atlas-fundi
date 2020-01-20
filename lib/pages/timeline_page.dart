import 'package:atlas_fundi/components/app/sliver_app_bar.dart';
import 'package:atlas_fundi/components/cards/earnings_card.dart';
import 'package:atlas_fundi/components/cards/ongoing_work.dart';

import 'package:flutter/material.dart';

class TimelinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 0,

            ///Properties of app bar
            backgroundColor: Theme.of(context).primaryColor,
            floating: false,
            pinned: true,
            expandedHeight: 40.0,

            ///Properties of the App Bar when it is expanded
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text(
                "Timeline",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Container(
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: Colors.black26,
                      width: 1.0,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverPersistentHeader(
            delegate: CustomSliverAppBar(expandedHeight: 200),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: 100,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: EarningsCard(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: OngoingWork(),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) => Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/img/man.jpeg'),
                          ),
                          title: Text('Neville Griffin messaged you'),
                          subtitle: Text('I am waiting'),
                          trailing: Text('23min ago'),
                        ),
                      ),
                    ),
                childCount: 6),
          )
        ],
      ),
    );
  }
}
