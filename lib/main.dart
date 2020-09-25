import 'apphome.page.dart';
import 'package:flutter/material.dart';
import 'login.page.dart';
import 'auth.service.dart';
import 'addcustomer.dart';

AuthService appAuth = new AuthService();

void main() async {

  //Set default Home page for the app
  Widget _defaultHome = new LoginPage();

  //Get result of login function
  bool _result = await appAuth.login();
  if(_result){
    print(_result);
    _defaultHome = new AppHomepage();
  }

  runApp( new MaterialApp(
    title: 'Baki Khata',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: _defaultHome,
    routes: <String, WidgetBuilder>{
      //Set Routing using Navigator
      '/home': (BuildContext context) => new AppHomepage(),
      '/login': (BuildContext context) => new LoginPage(),
      '/add_customer': (BuildContext context) => new AddCustomer()
    },
  ));
}




