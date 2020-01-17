import 'package:atlas_fundi/components/app/app_bar.dart';
import 'package:atlas_fundi/components/client/client_bottom_sheet.dart';
import 'package:atlas_fundi/components/map/map.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MapScreen({Key key, @required this.scaffoldKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        MapContainer(),
        Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: CustomAppBar(
                scaffoldKey: scaffoldKey,
              ),
            )),
        Align(
          alignment: Alignment.bottomCenter,
          child: ClientBottomSheet(),
        )
      ],
    );
  }
}
