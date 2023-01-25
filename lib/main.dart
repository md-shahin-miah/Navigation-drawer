import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:navigation_drawer_example/data/menuitems.dart';


import 'pages/aboutUs.dart';
import 'pages/helpPage.dart';
import 'pages/paymentpage.dart';
import 'screens/menuscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MenuItems currentItem = MenuItemsGenerate.payment;

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ZoomDrawer(
        borderRadius: 30,
        angle: -5,
        showShadow: false,
        backgroundColor: Colors.red,
        style: DrawerStyle.Style1,
        mainScreen: getScreen(),
        shadowLayer1Color: Colors.purpleAccent,

        menuScreen: Builder(
          builder: (context) => MenuScreen(
              currentItem: currentItem,
              onSelectedItem: (item) {
                setState(() => currentItem = item);
                ZoomDrawer.of(context)!.close();
              }),
        ),
      ));

  Widget getScreen() {
    switch (currentItem) {
      case MenuItemsGenerate.payment:
        return PaymentPage();
      case MenuItemsGenerate.aboutUs:
        return AboutUs();
      case MenuItemsGenerate.help:
        return HelpPage();
      default:
        return PaymentPage();
    }
  }
}
