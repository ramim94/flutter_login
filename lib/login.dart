import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';


class Login extends StatelessWidget{

  const Login({
    Key key,
    @required this.onSubmit,
    }) : super(key:key);

  final VoidCallback onSubmit;

  static final TextEditingController _userName= new TextEditingController();
  static final TextEditingController _userPass= new TextEditingController();

  get userName => _userName.text;

  get userPass => _userPass.text;

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new TextField(
          controller: _userName,
          decoration: new InputDecoration(hintText: "Enter A Username"),
        ),
        new TextField(
          controller: _userPass,
          decoration: new InputDecoration(hintText: "Enter A password"),
        ),
        new RaisedButton(
            child: new Text("Submit"),
            onPressed: onSubmit)
      ],
    );
  }


}