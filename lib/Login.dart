import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 20.0),
                    child: Row(
                      children: [
                        Text(
                          'App name',
                          style: TextStyle(fontSize: 20, fontFamily: 'OrelegaOne'),
                        ),
                      ],
                    )),
              ),
              Center(
                child: Container(
                    margin: EdgeInsets.only(top: 60.0),
                    child: CircleAvatar(
                      child: Icon(
                        Icons.account_circle,
                        size: 100.0,
                      ),
                      radius: 100.0,
                      backgroundColor: Colors.white,
                    )),
              ),
              Container(),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Username'),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(labelText: 'Password'),
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    child: Text('Sign in'),
                    onPressed: () {},
                  )),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    child: Text('Sign up'),
                    onPressed: () {},
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
