import 'package:flame/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'games/gmeVatta.dart';

class pgeVatta extends StatefulWidget {
  @override
  pgeVattaState createState() => pgeVattaState();
}

class pgeVattaState extends State<pgeVatta> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Test App",
      home: Scaffold(
        body: gmeVatta(),

    )
    );

  }
}

