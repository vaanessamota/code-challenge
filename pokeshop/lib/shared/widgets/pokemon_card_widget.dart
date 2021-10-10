import 'package:flutter/material.dart';
import 'package:pokeshop/modules/cart/cart_controller.dart';
import 'package:pokeshop/shared/models/pokemon_model.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;
  final CartController cartController;
  final bool isHome;

  PokemonCard(
      {Key? key,
      required Pokemon this.pokemon,
      required CartController this.cartController,
      required bool this.isHome})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        child: Column(
          children: [
            Container(
              height: 140,
              child: Image.network(pokemon.sprite.image),
            ),
            Container(
                child: Text(
              'Name: ${pokemon.name}',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Container(
              child: Text(
                'Weight: ${pokemon.weight}',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      if (isHome) {
                        cartController.addPokemonToList(pokemon);
                      } else {
                        cartController.removePokemonFromList(pokemon);
                      }
                    },
                    child: Text(
                      isHome ? 'Add to cart' : 'Remove',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 18),
                    )),
                isHome
                    ? Icon(
                        Icons.favorite_border_sharp,
                        size: 25,
                        color: Theme.of(context).primaryColor,
                      )
                    : Container(),
              ],
            )
          ],
        ));
  }
}
