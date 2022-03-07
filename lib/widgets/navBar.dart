import 'package:flutter/material.dart';
import 'package:myapp/widgets/BankCard.dart';
import 'package:myapp/themes/Style.dart';

class NavBar extends StatefulWidget {
  const NavBar({required this.place, required this.updatePage, Key? key})
      : super(key: key);
  final int place;
  final Function updatePage;
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  void _onItemTap(int index) {
    widget.updatePage(index);
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedIconTheme:
          const IconThemeData(color: Color.fromARGB(255, 185, 72, 64)),
      // selectedItemColor: const Color.fromARGB(255, 185, 72, 64),
      selectedItemColor: BGRedColor,
      unselectedItemColor: Colors.black,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          label: "Contacts",
          icon: Icon(
            Icons.contacts,
          ),
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.savings,
          ),
          label: "Wallet",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_balance,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          label: "Send money",
          icon: Icon(
            Icons.send,
          ),
        ),
        BottomNavigationBarItem(
          label: "Profile",
          icon: Icon(
            Icons.account_circle,
          ),
        ),
      ],
      currentIndex: widget.place,
      onTap: _onItemTap,
      selectedFontSize: 13.0,
      unselectedFontSize: 13.0,
    );
  }
}
