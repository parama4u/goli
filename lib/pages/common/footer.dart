import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget footerDesign() =>
    // #docregion Row
    Row(
      children: [
        Expanded(
          child: FooterAdvert(),
        ),
      ],
    );

class FooterAdvert extends StatelessWidget {
  const FooterAdvert();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffeeeeee), width: 4.0),
        color: Colors.white38,
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
        boxShadow: [
          BoxShadow(
            color: Colors.white10,
            blurRadius: 4,
            spreadRadius: 2,
            offset: Offset(0, 4),
          ),
        ],
      ),
      height: 100,
      width: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            "Advert Here  ",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
                color: Colors.black54),
          ),
        ],
      ),
    );
  }
}
