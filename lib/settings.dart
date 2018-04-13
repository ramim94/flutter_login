import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget{
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "settings",
      home: new Scaffold(
        body: new Container(
          padding: const EdgeInsets.all(22.0),
          child: new RaisedButton(
            onPressed: onLogout,
          child: new Text("Logout"),
          ),
        ),
      ),
    );
  }

  const Settings({
    @required this.onLogout
});

}