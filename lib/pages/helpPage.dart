import 'package:flutter/material.dart';

import '../widgets/menuwidgets.dart';

class HelpPage extends StatefulWidget {
  HelpPage({Key? key}) : super(key: key);

  @override
  _HelpPageState createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: MenuWidget(),
      backgroundColor: Colors.tealAccent,
      title: Text(
        'Help',
        style: TextStyle(color: Colors.black),
      ),
    ));
  }
}
