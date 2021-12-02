import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'common/header.dart';
import 'common/footer.dart';
import 'common/selection.dart';

Widget pgeHome() =>
         Container(child: buildRow());

Widget buildRow() =>
      // #docregion Row
  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Container(
            child: headerDesign()
      ),
      Container(
          child: genCards()
      ),
      Container(
            transformAlignment: Alignment.bottomCenter,
            child: footerDesign()
      ),
    ],
  );
