
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const List<Widget> children = [
  Expanded(child:

  ListTile(
    title: Text('Circa'),
  )
  )
];


Widget genGames() {
  return Center(
    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          GameCard(gameColor: Colors.redAccent, gameName: 'Vatta'),
          GameCard(gameColor: Colors.brown, gameName: 'Bantha'),
          GameCard(gameColor: Colors.blueAccent, gameName: 'Kuli'),

        ],
      ),
    ),
  );
}
// #enddocregion Card

class GameCard extends StatelessWidget {
  const GameCard({
    this.gameColor = Colors.redAccent,
    this.gameName = 'Game Name',
  });

  final Color gameColor;
  final String gameName;

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
      margin: EdgeInsets.all(8),
      height: 200,
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Icon(
                Icons.icecream,
                size: 100.0,
                color: gameColor,
              )),
          SizedBox(
            height: 20.0,
          ),
          Text(
            gameName,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
                color: gameColor),
          ),
        ],
      ),
    );
  }
}