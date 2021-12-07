import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget wip() {
  return Container(
    child: Expanded(

      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/wip.png'),
          Text ("Coming soon" ,
                textScaleFactor: 1.5,
                style: TextStyle ( fontWeight:  FontWeight.bold),
          ),
        ],
      )
    )
  );
}
// #enddocregion Card

