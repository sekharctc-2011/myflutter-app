import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'main.dart';

class AddCustomer extends StatefulWidget {
  @override
  _AddCustomerState createState() => _AddCustomerState();
}

class _AddCustomerState extends State<AddCustomer> {

final customerController = TextEditingController();
final mobController = TextEditingController();

@override
void dispose(){
  super.dispose();
  customerController.dispose();
  mobController.dispose();
}

Widget customername(){
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: TextField(
      controller: customerController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText:'Customer Name',
      ),
      maxLines: 1,
      textInputAction: TextInputAction.go,
    ),
  );
}

Widget contactNo() {
  return Padding(
    padding: EdgeInsets.all(16.0),
    child: TextField(
      controller: mobController,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: "Mobile Number"
      ),
      maxLines: 1,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
    ),
  );
}


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: new AppBar(
            backgroundColor: Colors.green,
            title: Text('Add Customer',
              style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.white,
              ),
            ),
          ),
          body: Column(
            children: <Widget>[
              customername(),
              contactNo(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xff01A0C7),
                  child: MaterialButton(
                    minWidth: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                    onPressed: () { },
                    child: Text("Save Customer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
    );
  }
}
