import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  const MenuItem(
      {this.menuIcon = Icons.brightness_1_rounded,
      this.menuText = '',
      this.menuImage = 'assets/goli-bg.png'});

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
            size: 20,
          )),
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
