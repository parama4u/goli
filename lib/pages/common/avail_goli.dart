import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'menu_item.dart';

final GlobalKey<_AvailGolis> golis = GlobalKey();


class AvailGolis extends StatefulWidget {
  AvailGolis({Key key}) : super(key: key);

  @override
  _AvailGolis createState() {
    return _AvailGolis();
  }
}

class _AvailGolis extends State<AvailGolis> {
  int _counter = 0;
  int _first_login = 0;
  int _last_login = 0;
  int _last_claimed =0;
  int _cont_logins = 0;
  int _login_diff = 0;
  int _claim_diff = 0;



  @override
  void initState() {
    super.initState();
    print("Here");
    _loadCounter();
  }

  //Loading counter value on start
  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      //10 golies at first installation , need to update when account details added
      _counter = (prefs.getInt('counter') ?? 10);
      _first_login = (prefs.getInt('first_login') ?? 0);
      _last_login = (prefs.getInt('last_login') ?? 0);
      _last_claimed = (prefs.getInt('last_claimed') ?? 0);
      _cont_logins = (prefs.getInt('cont_logins') ?? 0);
      if (_first_login == 0){
        prefs.setInt('first_login', DateTime.now().millisecondsSinceEpoch);
      }
      prefs.setInt('last_login', DateTime.now().millisecondsSinceEpoch);
      _login_diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(_last_login)).inDays;
      _claim_diff = DateTime.now().difference(DateTime.fromMillisecondsSinceEpoch(_last_claimed)).inDays;
      if (_login_diff == 1){
        // relogin in 1
        if (_cont_logins<7){
          _cont_logins = _cont_logins + 1;
        }
        else{
          _cont_logins = 1;
        }
        prefs.setInt('cont_logins', _cont_logins);

      }
      else if (_login_diff > 1){
        // relogin after few
        prefs.setInt('cont_logins', 0);
      }
      print("Last: $_last_login , Diff: $_login_diff, Continuous: $_cont_logins");
      if(_claim_diff>0)
        {
          incrementCounter(goli: _cont_logins);
          prefs.setInt('last_claimed', DateTime.now().millisecondsSinceEpoch);
        }

    });
  }

  //Incrementing counter after click
  void incrementCounter({int goli:1}) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {

      _counter = (prefs.getInt('counter') ?? 0) + goli;
      print("updated counter: $_counter");
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MenuItem(menuText: '$_counter');
  }
}
