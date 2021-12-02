

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headerDesign() =>
    // #docregion Row
Container(
  alignment: Alignment.topCenter,

  padding: new EdgeInsets.only(top: 30),
  child: Row(
    children: [
      Expanded(
          child:MenuItem(menuIcon: Icons.account_circle_rounded),
        flex: 1,
      ),
      Expanded(child: MenuItem(menuText: "200"),
      flex:4
      ),
      Expanded(
        child: MenuItem(menuIcon:Icons.exit_to_app_rounded , menuText: "Exit") ,
        flex: 1,
      ) ,

    ],
  ),
);



class MenuItem extends StatelessWidget {
  const MenuItem({
    this.menuIcon = Icons.brightness_1_rounded,
    this.menuText = '',
    this.menuImage = 'img/goli-bg.png'
  });

  final IconData menuIcon;
  final String menuText;
  final String menuImage;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee), width: 2.0),
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],
      ),

      height: 50,
      width: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Center(
              child: Icon(
                menuIcon,
                size:20,

              )
          ),
          Text(
            menuText,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12.0,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }
}