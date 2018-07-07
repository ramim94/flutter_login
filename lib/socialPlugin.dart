import 'package:flutter/cupertino.dart';

class SocialPlugin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    var _googleImage= new AssetImage("images/google.png");
    var _plugin1= new Image(image: _googleImage,width: 32.0,height: 32.0,);

    var _fbImage= new AssetImage("images/facebook.png");
    var _plugin2= new Image(image: _fbImage,width: 32.0,height: 32.0,);

    return new Container(
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(4.0),
            child: _plugin2,
            //todo child image 1
          ),
          new Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(4.0),
            child: _plugin1,
            //todo child image 2
          )
        ],
      ),
    );
  }
}
