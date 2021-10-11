import 'package:flutter/material.dart';
import 'package:pokeshop/modules/cart/cart_controller.dart';
import 'package:pokeshop/shared/models/pokemon_model.dart';

class CardTextButton extends StatelessWidget {
  const CardTextButton({
    Key? key,
    required this.isHome,
    required this.cartController,
    required this.pokemon,
  }) : super(key: key);

  final bool isHome;
  final CartController cartController;
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          if (isHome) {
            cartController.addPokemonToList(pokemon);
            showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: Text('Added to cart'),
                content: Text(
                  'This pokemon was added to cart!',
                  style: TextStyle(fontSize: 18),
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
          } else {
            cartController.removePokemonFromList(pokemon);
          }
        },
        child: Text(
          isHome ? 'Add to cart' : 'Remove',
          style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 18),
        ));
  }
}
