import 'package:flutter/material.dart';

class MenuBottom extends StatelessWidget {
  const MenuBottom({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/main');
            break;
          case 1:
            Navigator.pushNamed(context, '/search');
            break;
          case 2:
            Navigator.pushNamed(context, '/mypage');
            break;
          default:
        }
      }, items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_rounded), label: 'Search'),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Mypage')
      ],
    );
  }
}