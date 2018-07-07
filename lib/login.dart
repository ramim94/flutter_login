import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_login/socialPlugin.dart';


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
      crossAxisAlignment: CrossAxisAlignment.center,
       children: <Widget>[
         new Container(
           child: new AppIconWid(),
         ),
         new Center(
           child: new Card(
             margin: EdgeInsets.all(8.0),
             elevation: 4.0,
             color: Colors.grey,
             child:
             new Column(
               mainAxisAlignment: MainAxisAlignment.center,
               mainAxisSize: MainAxisSize.min,
               children: <Widget>[
                 new Container(
                   child: new TextField(
                     controller: _userName,
                     decoration: new InputDecoration(
                         hintText: "Enter A Username"),
                   ),
                   margin: EdgeInsets.all(8.0),
                 ),

                 new Container(
                   child: new TextField(
                     controller: _userPass,
                     decoration: new InputDecoration(
                         hintText: "Enter A password"),
                   ),
                   margin: EdgeInsets.all(8.0),
                 ),
                 new Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: <Widget>[
                     new Container(
                         margin: EdgeInsets.all(8.0),
                         child: new RaisedButton(
                             padding: EdgeInsets.all(16.0),
                             child: new Text("Log In"),
                             onPressed: onSubmit)
                     ),
                     new Container(
                         margin: EdgeInsets.all(8.0),
                         child: new RaisedButton(
                             padding: EdgeInsets.all(16.0),
                             child: new Text("Register"),
                             onPressed: onSubmit)
                     ),
                     new Container(
                       margin: EdgeInsets.all(16.0),
//                      child: new SocialPlugin(),
                     )
                   ],
                 ),

               ],
             ),
           ),
         ),
         new Center(

          child: new SocialPlugin()
         )
       ]
    );
  }
}

class AppIconWid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _appIconVar= new AssetImage("images/android.png");
    var _actualAppIcon= new Image(image: _appIconVar,width: 256.0, height: 256.0);

    return Container(
      child: _actualAppIcon,
    );
  }
}

