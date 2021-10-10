import 'package:mobx/mobx.dart';
import 'package:pokeshop/shared/models/pokemon_model.dart';

part 'cart_controller.g.dart';

class CartController = _CartBase with _$CartController;

abstract class _CartBase with Store {
  @observable
  ObservableList<Pokemon> cart_list = ObservableList<Pokemon>.of([]);

  @action
  addPokemonToList(Pokemon pokemon) async {
    cart_list.add(pokemon);
  }

  @action
  removePokemonFromList(Pokemon pokemon) async {
    cart_list.remove(pokemon);
  }
}