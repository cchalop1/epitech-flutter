import 'package:flutter/material.dart';
import 'package:myapp/pages/Welcome/welcome_screen.dart';
import 'package:myapp/widgets/navBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void updatePage(int index) {
    setState(() {
      place = index;
    });
  }

  int place = 2;
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color.fromARGB(255, 185, 72, 64),
        //   title: const Text('Welcome to Flutter'),
        // ),
        // bottomNavigationBar: NavBar(place: place, updatePage: updatePage),
        //body: widgetOptions.elementAt(place), //const BankCard(),
        body: WelcomeScreen(),
      ),
    );
  }
}
