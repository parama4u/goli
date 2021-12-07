import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goli_dev/pages/common/avail_goli.dart';

import 'common/footer.dart';
import 'common/games.dart';
import 'common/header.dart';

class pgeHome extends StatefulWidget {
  @override
  pgeHomeState createState() => pgeHomeState();
}

class pgeHomeState extends State<pgeHome> {



  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(child: headerDesign()),
        Container(child: genGames()),
        Container(
            transformAlignment: Alignment.bottomCenter, child: footerDesign()),
      ],
      );

  }
}
