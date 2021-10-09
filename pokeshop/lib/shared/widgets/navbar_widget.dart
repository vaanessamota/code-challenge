import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Theme.of(context).primaryColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
            backgroundColor: Theme.of(context).primaryColor),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
            backgroundColor: Theme.of(context).primaryColor),
      ],
      backgroundColor: Theme.of(context).primaryColor,
    );
  }
}
