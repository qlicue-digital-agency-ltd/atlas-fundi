import 'package:atlas_fundi/components/buttons/custom_text_button.dart';
import 'package:atlas_fundi/components/cards/drawer_header_card.dart';
import 'package:atlas_fundi/pages/timeline_page.dart';
import 'package:atlas_fundi/pages/work_history.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DrawerHeaderCard(),
            SizedBox(
              height: 20,
            ),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CustomTextButton(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => WorkHistory()));
                  },
                  title: 'Work History',
                )),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CustomTextButton(
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (BuildContext context) => TimelinePage()));
                  },
                  title: 'Timeline',
                )),
            Padding(
                padding: const EdgeInsets.only(left: 10),
                child: CustomTextButton(
                  onTap: () {
                    print('Help');
                  },
                  title: 'Help',
                )),
            Spacer(),
            Divider(),
            Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 20),
                child: CustomTextButton(
                  onTap: () {},
                  title: 'Legal',
                  subTitle: 'v1.0',
                  fontSize: 15,
                )),
          ],
        ),
      ),
    );
  }
}
