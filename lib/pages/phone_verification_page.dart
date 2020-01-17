

import 'package:atlas_fundi/components/text_field/verification_code.dart';
import 'package:atlas_fundi/pages/home_page.dart';
import 'package:flutter/material.dart';

class PhoneVerificationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Phone Verify'),
      ),
      body: SingleChildScrollView(
        child: Form(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'We sent you a code to verify your phone number',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Sent to (+255)-715-785-672'),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    VerificationCodeField(),
                    SizedBox(
                      width: 10,
                    ),
                    VerificationCodeField(),
                    SizedBox(
                      width: 10,
                    ),
                    VerificationCodeField(),
                    SizedBox(
                      width: 10,
                    ),
                    VerificationCodeField(),
                    SizedBox(
                      width: 10,
                    ),
                    VerificationCodeField()
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text('Did\'nt receive OTP?'),
                FlatButton(
                  textColor: Theme.of(context).primaryColor,
                  child: Text('Resend OTP'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: RaisedButton(
                        color: Theme.of(context).primaryColor,
                        child: Text(
                          'Verify and continue',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      HomePage()));
                        },
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
