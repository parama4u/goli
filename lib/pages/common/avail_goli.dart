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

  @override
  void initState() {
    super.initState();
    _loadCounter();
  }

  //Loading counter value on start
  void _loadCounter() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0);
    });
  }

  //Incrementing counter after click
  void incrementCounter() async {
    final prefs = await SharedPreferences.getInstance();
    print("Hey");
    setState(() {
      _counter = (prefs.getInt('counter') ?? 0) + 1;
      prefs.setInt('counter', _counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MenuItem(menuText: '$_counter');
  }
}