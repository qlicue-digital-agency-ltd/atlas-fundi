import 'package:atlas_fundi/components/cards/profile_card.dart';
import 'package:flutter/material.dart';

class CustomSliverAppBar extends SliverPersistentHeaderDelegate {
  final double expandedHeight;

  CustomSliverAppBar({@required this.expandedHeight});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      fit: StackFit.expand,
      overflow: Overflow.visible,
      children: [
        Container(
          color: Theme.of(context).primaryColor,
        ),
        Center(
          child: Opacity(
            opacity: shrinkOffset / expandedHeight,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/img/woman.jpeg'),
              ),
              title: Text(
                'Fundi Chawa',
                style: TextStyle(color: Colors.white),
              ),
              subtitle: Row(
                children: <Widget>[
                  Text(
                    '5.0\t',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          top: expandedHeight / 2 - shrinkOffset,
          left: MediaQuery.of(context).size.width / 30,
          right: MediaQuery.of(context).size.width / 30,
          child: Opacity(
            opacity: (1 - shrinkOffset / expandedHeight),
            child: Card(
              elevation: 10,
              child: SizedBox(
                height: expandedHeight,
                width: MediaQuery.of(context).size.width,
                child: ProfileCard(
                  padding: 80,
                  textColor: Colors.black54,
                  iconColor: Colors.black54,
                  image: 'assets/img/woman.jpeg',
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  double get maxExtent => expandedHeight;

  @override
  double get minExtent => kToolbarHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
