import 'package:flutter/material.dart';

import '../data/menuitems.dart';


class MenuItemsGenerate {
  static const payment = MenuItems('Payment', Icons.payment);
  static const aboutUs = MenuItems('About Us', Icons.info_outline_rounded);
  static const help =  MenuItems('Help', Icons.help_outline_rounded);

  static const all = <MenuItems>[
    payment,
    aboutUs,
    help,
  ];
}

class MenuScreen extends StatefulWidget {
  final MenuItems currentItem;
  final ValueChanged<MenuItems> onSelectedItem;

  const MenuScreen(
      {Key? key, required this.currentItem, required this.onSelectedItem})
      : super(key: key);

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.dark(),
      child: Scaffold(
          backgroundColor: Colors.lightBlueAccent[100],
          body: SafeArea(
              child: Column(children: <Widget>[
            Spacer(),
            ...MenuItemsGenerate.all.map(buildMenuItem).toList(),
            Spacer(flex: 2),
          ]))),
    );
  }

  Widget buildMenuItem(MenuItems item) => ListTileTheme(
        selectedColor: Colors.white,
        child: ListTile(
          selectedTileColor: Colors.black26,
          selected: widget.currentItem == item,
          minLeadingWidth: 20,
          leading: Icon(item.icon),
          title: Text(item.title),
          onTap: () => widget.onSelectedItem(item),
        ),
      );
}
