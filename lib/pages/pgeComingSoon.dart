import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'common/footer.dart';
import 'common/comingsoon.dart';
import 'common/header.dart';

class pgeComingSoon extends StatefulWidget {
  @override
  pgeComingSoonState createState() => pgeComingSoonState();
}

class pgeComingSoonState extends State<pgeComingSoon> {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Test App",
      home: Scaffold(
      body: Column(
              children: [
                Container(child: headerDesign()),
                Container(child: wip()),
                Container(
                    transformAlignment: Alignment.bottomCenter, child: footerDesign()),
              ],

    )
    )
    );

  }
}
