import 'package:flutter/material.dart';
import 'package:myapp/widgets/BankCard.dart';
import 'package:myapp/widgets/graph.dart';
import '../components/indicator.dart';
import 'Welcome/midPage/background.dart';
import 'package:myapp/widgets/listTransac.dart';

class Wallet extends StatefulWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => WalletState();
}

class WalletState extends State {
  @override
  Widget build(BuildContext context) {
    return Background(
      child: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BankCard(),
            Graph(),
            ListTransac(),
          ],
        ),
      ),
    );
  }
}
