import 'package:flutter/cupertino.dart';

class WidTries extends StatelessWidget {


  //getting images

  @override
  Widget build(BuildContext context) {

    // getting images
    var _appIconVar = new AssetImage("images/android.png");
    var _appIcon= new Image(image: _appIconVar,width: 48.0,height: 48.0,);

    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: _appIcon,
            //todo child image 1
          ),
        ],
      ),
    );
  }
}
/*
class SocialPlugin extends StatelessWidget {
  var _plugin1;
  var _plugin2;

  @override
  Widget build(BuildContext context) {
    var _fbImage= new AssetImage("images/facebook.png");
    var _googleImage= new AssetImage("images/google.png");
    _plugin1= new Image(image: _fbImage,width: 32.0,height: 32.0,);
    _plugin2= new Image(image: _googleImage,width: 32.0,height: 32.0,);

    return Container(child: null,);
  }

  _getFbImg(){
    return _plugin1;
  }

  _getGoogleImg(){
    return _plugin2;
  }
}
*/