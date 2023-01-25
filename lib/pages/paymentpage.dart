import 'package:flutter/material.dart';

import '../widgets/menuwidgets.dart';

class PaymentPage extends StatefulWidget {
  PaymentPage({Key? key}) : super(key: key);

  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: MenuWidget(),
      title: Text('Payment', style: TextStyle(color: Colors.black)),
    ));
  }
}
