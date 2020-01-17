import 'package:atlas_fundi/pages/create_account_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LOGIN'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('SIGNUP'),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => CreateAccountPage()));
          },
        ),
      ),
    );
  }
}
