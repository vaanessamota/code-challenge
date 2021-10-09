import 'package:flutter/material.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    Key? key,
    required String this.image,
    required String this.name,
    required String this.weight,
  }) : super(key: key);

  final String image;
  final String name;
  final String weight;

  @override
  Widget build(BuildContext context) {
    return Card(
        semanticContainer: true,
        child: Column(
          children: [
            Container(
              height: 140,
              child: Image.network(image),
            ),
            Container(
                child: Text(
              'Name: $name',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
            Container(
              child: Text(
                weight,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Add to cart',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 18),
                    )),
                Icon(
                  Icons.favorite_border_sharp,
                  size: 25,
                  color: Theme.of(context).primaryColor,
                )
              ],
            )
          ],
        ));
  }
}
