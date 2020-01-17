
import 'package:atlas_fundi/pages/login_page.dart';
import 'package:flutter/material.dart';


class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Atlas Fundi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    );
  }
}
