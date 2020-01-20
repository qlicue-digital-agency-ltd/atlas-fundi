import 'package:atlas_fundi/components/buttons/icon_text_button.dart';
import 'package:atlas_fundi/components/cards/profile_card.dart';

import 'package:flutter/material.dart';

class OngoingWork extends StatelessWidget {
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text('Ongoing Work', style: TextStyle(color: Colors.black45)),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert),
              ),
            ],
          ),
          ProfileCard(
              image: 'assets/img/man.jpeg',
              radius: 30,
              padding: 20,
              textColor: Colors.black54,
              time: '5:20pm',
              iconColor: Theme.of(context).primaryColor),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconTextButton(
                icon: Icons.phone,
                onTap: () {},
                title: 'Call',
              ),
              IconTextButton(
                icon: Icons.message,
                onTap: () {},
                title: 'Chat',
              ),
              IconTextButton(
                icon: Icons.check_circle,
                onTap: () {},
                title: 'Finish',
              ),
            ],
          )
        ],
      ),
    );
  }
}
