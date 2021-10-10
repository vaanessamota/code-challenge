import 'package:flutter/material.dart';
import 'package:pokeshop/modules/cart/cart_controller.dart';
import 'package:pokeshop/shared/widgets/pokemon_card_widget.dart';
import 'home_controller.dart';

class MyHomePage extends StatefulWidget {
  final CartController cartController;

  MyHomePage({
    Key? key,
    required this.title,
    required CartController this.cartController,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController _controller = HomeController();

  late Future _getPokemons;

  @override
  void initState() {
    super.initState();
    _getPokemons = _controller.getPokemons();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: screenSize.height - 116,
            child: FutureBuilder(
                future: _getPokemons,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Column(
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                            ),
                            itemCount: _controller.pokemons.length,
                            padding: EdgeInsets.all(5),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 500,
                                child: PokemonCard(
                                  isHome: true,
                                  cartController: widget.cartController,
                                  pokemon: _controller.pokemons[index],
                                  index: index,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    );
                  } else {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://iza.com.vc/_nuxt/img/logo.d0c321f.png',
                          scale: 1,
                        ),
                        CircularProgressIndicator(),
                      ],
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
