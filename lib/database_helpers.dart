import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';

/* Data Model class */
class Customerdb {
  int _id;
  String _customername;
  String _mobile;

  Customerdb(this._id, this._customername, this._mobile);

  int get id => _id;

  String get customername => _customername;

  String get mobileno => _mobile;

  set customername(String name){
    if(name.length < 255){
      this._customername = name;
    }
  }

  set mobileno(String mob){
    if(mob.length >= 10 && mob.length <= 11){
      this._mobile = mob;
    }
  }

  /*Convert Customerdb object to a map object*/
  Map<String, dynamic> toMap() {

    var map = Map<String, dynamic>();
    if(id != null){
      map['id'] = _id;
    }
    map['customername'] = _customername;
    map['mobileno'] = _mobile;

    return map;
  }

  Customerdb.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._customername = map['customername'];
    this._mobile = map['mobileno'];
  }

}

class DatabaseHelper {
  static DatabaseHelper _databaseHelper; //singleton database helper
  static Database _database; //Singleton Database

  String customerTable = 'customer_table';
  String colId = 'id';
  String colName = 'customername';
  String colMobileNo = 'mobileno';

  DatabaseHelper._createInstacne(); //Named constructor to create the DatabaseHelper

  factory DatabaseHelper() {

    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._createInstacne(); //This is execute only once, singleton object
    }

    return _databaseHelper;
  }

}