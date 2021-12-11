import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gmeVatta extends StatefulWidget {
  @override
  gmeVattaState createState() => gmeVattaState();
}

class gmeVattaState extends State<gmeVatta> {

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      children: [
        Positioned(child: Goli(), left: 0, top: 0, width: 400, height: 800,),
        //Background
        Positioned(
                left: 0,
                top: 0,
                height: 800,
                width: 400,
                child:
                Column(
                  children: [
                    //gap
                    Container(
                      width: 100,
                      height: 30,
                    ),
                    //gameplace
                    Container(
                      width: 350.0,
                      height: 350.0,
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 20),
                      decoration:  BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                    ),

                    //gap
                    Container(
                      width: 20,
                      height: 300,
                    ),

                    //bottom line
                    Divider(
                      thickness: 2,
                      color: Colors.black,
                      indent: 30,
                      endIndent: 30,
                    ),


                  ],
                ),
        ),

      ],
    ) ;
  }
}

class Goli extends StatefulWidget {
  @override
  GoliState createState() => GoliState();
}

class GoliState extends State<Goli> {

  AlignmentGeometry alignment = Alignment.center;
  Duration animationDuration = Duration(milliseconds: 500);
  Color color = Colors.deepOrange;
  Curve animationCurve = Curves.easeInOutBack;

  AlignmentGeometry randomAlign() {
    Map boolToSign = {
      true: 1,
      false: -1,
    };
    double x = boolToSign[Random().nextBool()] * Random().nextDouble();
    double y = boolToSign[Random().nextBool()] * Random().nextDouble();
    return Alignment(x, y);
  }

  Color randomColor() {
    Map intToColor = {
      0: Colors.deepOrange,
      1: Colors.black,
      2: Colors.deepPurple,
      3: Colors.pink,
      4: Colors.teal,
      5: Colors.green[800],
      6: Colors.blueAccent,
    };
    return intToColor[Random().nextInt(7)];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          // color: Colors.blueAccent,
          child: AnimatedAlign(
            duration: animationDuration,
            curve: animationCurve,
            alignment: alignment,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  alignment = randomAlign();
                  color = randomColor();
                });
              },
              child: Card(
                elevation: 10.0,
                shape: CircleBorder(),
                child: AnimatedContainer(
                  curve: animationCurve,
                  duration: animationDuration,
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: Text('PRESS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}


