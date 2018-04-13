import 'package:flutter/material.dart';
import 'settings.dart';
import 'login.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  String _appTitle="Login Demo";
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: _appTitle,
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  State createState() {
    return new _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>{

  String _appTitle="Login Demo";
  Widget _screen;
  Login _login;
  Settings _settings;
  bool _authenticated;

  //bad way to change screen
  _MyHomePageState(){
    _login= new Login(onSubmit: (){onSubmit();});
    _settings= new Settings(onLogout: (){onLogout();});
    _screen= _login;
    _authenticated= false;

  }


  void onSubmit(){
    print("loging in with"+ _login.userName +" "+ _login.userPass );
    if(_login.userName=="name" && _login.userPass=="pass"){
      _setAuthentication(true);
    }else{
      //show error msg
    }
  }

  void onLogout(){
    setState(() {
      print("Logging out");
      _setAuthentication(false);
    });


  }

  void logout(){
    _setAuthentication(false);
  }

  void _setAuthentication(bool auth){
    setState(() {
      if(auth){
        _authenticated= auth;
        _screen= _settings;
      }
      else{
        _authenticated= auth;
        _screen= _login;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(_appTitle),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.home), onPressed: (){_goHome();}),
          new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: (){_logout();})
        ],
      ),
      body: _screen,
    );
  }

  void _goHome(){
    print("go Home");
  }
  void _logout(){
    print("Logging out");
  }

}

