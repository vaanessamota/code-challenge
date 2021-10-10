import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokeshop/modules/cart/cart_controller.dart';
import 'package:pokeshop/shared/widgets/confirm_purchase_button.dart';
import 'package:pokeshop/shared/widgets/pokemon_card_widget.dart';

class MyCartPage extends StatelessWidget {
  final CartController cartController;

  MyCartPage({
    Key? key,
    required CartController this.cartController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Cart'),
      ),
      body: Observer(
        builder: (_) => cartController.cart_list.length == 0
            ? Center(
                child: Text(
                  'Cart is empty',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              )
            : ListView(
                children: [
                  SizedBox(
                    height: screenSize.height - 116,
                    child: Column(
                      children: [
                        Flexible(
                          fit: FlexFit.loose,
                          child: GridView.builder(
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 0.8,
                            ),
                            itemCount: cartController.cart_list.length,
                            padding: EdgeInsets.all(5),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: 500,
                                child: PokemonCard(
                                  isHome: false,
                                  pokemon: cartController.cart_list[index],
                                  cartController: cartController,
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 32),
                          child: ConfirmPurchaseButton(
                              cartController: cartController),
                        )
                      ],
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
