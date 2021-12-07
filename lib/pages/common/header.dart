import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'menu_item.dart';
import 'avail_goli.dart';

class headerDesign extends StatefulWidget {
  @override
  headerDesignState createState() => headerDesignState();
}

class headerDesignState extends State<headerDesign> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 30),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
                child: MenuItem(menuIcon: Icons.account_circle_rounded),
                focusColor: Colors.blue,
              ),
              flex: 1
              ),
          Expanded(
          child:
          InkWell(
                child:AvailGolis(),
                onTap: () {},
              ),
              flex: 4
          ),
          Expanded(
              child: InkWell(
                child: MenuItem(
                    menuIcon: Icons.exit_to_app_rounded, menuText: "Exit"),
                onTap: () => showDialog<String>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Confirm'),
                    content: const Text('Do you really wanna Close ?'),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context, 'Cancel');
                        },
                        child: const Text('Nah'),
                      ),
                      TextButton(
                        onPressed: () {
                          SystemNavigator.pop(animated: true);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 1
          ),
        ],
      ),
    );
  }
}
