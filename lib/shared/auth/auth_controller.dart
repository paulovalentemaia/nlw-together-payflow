import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_page.dart';
import 'package:payflow/modules/login/login_page.dart';

class AuthController {
  var _isAuthemticated = false;
  var _user;

  get user => _user;

  void setUser(BuildContext context, var user) {
    if (user != null) {
      _isAuthemticated = true;
      _user = user;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } else {
      _isAuthemticated = false;
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    }
  }
}
