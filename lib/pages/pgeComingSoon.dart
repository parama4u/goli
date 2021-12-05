import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goli_dev/pages/common/avail_goli.dart';

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
    return MaterialApp(
      home: Scaffold(
          body: InkWell(
            child:  Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(child: headerDesign()),
                Container(child: wip()),
                Container(
                    transformAlignment: Alignment.bottomCenter, child: footerDesign()),
              ],
            )
          )),
    );

  }
}
