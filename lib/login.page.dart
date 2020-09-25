import 'main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
/*  LoginPage({Key key, this.title}) : super(key: key);

  final String title;*/
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _status = 'no-action';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final emailField = TextField(
      obscureText: false,
      style: TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email or Mobile",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final passwordField = TextField(
      obscureText: true,
      style: TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Password",
        border:
        OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );
    final loginButon = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Color(0xff01A0C7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: () {
          print("Login btn pressed (${this._status})");
          setState(() => this._status = 'Loading');

          appAuth.login().then((value) {
            if(value){
              Navigator.of(context).pushReplacementNamed('/home');
            } else {
              setState(() => this._status = 'rejected');
            }
          });
        },
        child: Text("Login (${this._status})",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20.0
          ),
        ),
      ),

    );

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        body: Center(
          child: Container(
            color: Colors.grey.shade200,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(36.0, 5.0, 36.0, 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: 80.0,
                    child: Image.asset(
                      "assets/logo.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  Padding(padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    child:  Text("RAF KHATA",
                      style: TextStyle(
                        fontSize: 24.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0,),
                  emailField,
                  SizedBox(height: 25.0,),
                  passwordField,
                  SizedBox(height: 25.0,),
                  loginButon,
                  SizedBox(height: 15.0,),
                  Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: Icon(Icons.lock_outline, color: Colors.green,),
                          title: Text("Forgot password?"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //stuff for click
                          },
                        ),
                        _buildDevider(),
                        ListTile(
                          leading: Icon(Icons.person_add, color: Colors.green,),
                          title: Text("New user registration"),
                          trailing: Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //stuff for click
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container _buildDevider() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}
