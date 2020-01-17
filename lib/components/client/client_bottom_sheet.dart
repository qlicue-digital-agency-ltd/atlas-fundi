import 'package:atlas_fundi/components/buttons/icon_text_button.dart';
import 'package:atlas_fundi/constants/enums.dart';
import 'package:flutter/material.dart';

class ClientBottomSheet extends StatefulWidget {
  @override
  _ClientBottomSheetState createState() => _ClientBottomSheetState();
}

class _ClientBottomSheetState extends State<ClientBottomSheet> {
  ClientStatus _clientStatus = ClientStatus.Accept;
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Card(
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10))),
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                      children: <Widget>[
                        _clientStatus == ClientStatus.Arrive
                            ? Icon(
                                Icons.keyboard_arrow_up,
                                color: Colors.grey,
                              )
                            : Container(),
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage('assets/img/man.jpeg'),
                          ),
                          title: Text(
                            'John Joe',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                          ),
                          subtitle: Row(
                            children: <Widget>[
                              Icon(
                                Icons.star,
                                color: Theme.of(context).primaryColor,
                              ),
                              Text('\t4.0'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        _clientStatus == ClientStatus.Arrive
                            ? Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    IconTextButton(
                                      icon: Icons.phone,
                                      title: 'call',
                                      onTap: () {
                                        print('call');
                                      },
                                    ),
                                    IconTextButton(
                                      icon: Icons.message,
                                      title: 'chat',
                                      onTap: () {
                                        print('chat');
                                      },
                                    ),
                                    IconTextButton(
                                      icon: Icons.clear,
                                      title: 'cancel',
                                      onTap: () {
                                        print('cancel');
                                      },
                                    ),
                                  ],
                                ),
                              )
                            : Container(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 20),
                                child: RaisedButton(
                                  color: Theme.of(context).primaryColor,
                                  child: Text(
                                    _clientStatus == ClientStatus.Arrive
                                        ? 'Arrive'
                                        : 'Accept',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (_clientStatus ==
                                          ClientStatus.Accept) {
                                        _clientStatus = ClientStatus.Arrive;
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        Text(_clientStatus == ClientStatus.Arrive
                            ? 'Swipe to Arrive'
                            : 'Swipe to Accept'),
                      ],
                    ),
                  )),
            ),
          );
        },
      ),
    );
  }
}
