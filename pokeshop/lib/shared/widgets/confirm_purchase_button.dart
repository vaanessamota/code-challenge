import 'package:flutter/material.dart';
import 'package:pokeshop/modules/cart/cart_controller.dart';

class ConfirmPurchaseButton extends StatelessWidget {
  const ConfirmPurchaseButton({
    Key? key,
    required this.cartController,
  }) : super(key: key);

  final CartController cartController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text('Confirmed Purchase'),
              content: Text(
                'Thanks for buying with us!',
                style: TextStyle(fontSize: 28),
              ),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: Text(
                    'OK',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                ),
              ],
            ),
          );
        },
        style: ElevatedButton.styleFrom(
            primary: Theme.of(context).primaryColor,
            textStyle:
                TextStyle(fontSize: 18, color: Theme.of(context).accentColor),
            padding: EdgeInsets.all(12)),
        child: Text(
          'Confirm Purchase',
        ));
  }
}
