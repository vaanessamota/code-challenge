import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokeshop/app_widget_controller.dart';
import 'package:pokeshop/modules/cart/cart_controller.dart';
import 'package:pokeshop/modules/cart/cart_page.dart';
import 'modules/home/home_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  _AppWidgetState createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final AppWidgetController _controller = AppWidgetController();

  CartController cartController = CartController();

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screens = [
      MyHomePage(
        cartController: cartController,
        title: 'PokeShop',
      ),
      MyCartPage(cartController: cartController),
    ];

    return Scaffold(
      body: Observer(builder: (_) => screens[_controller.currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
          _controller.changeCurrentIndex(index);
        },
        selectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Theme.of(context).primaryColor),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: Theme.of(context).primaryColor),
        ],
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
