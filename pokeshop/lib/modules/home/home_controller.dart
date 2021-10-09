import 'package:mobx/mobx.dart';
import 'package:pokeshop/shared/models/pokemon_model.dart';
import 'package:pokeshop/shared/repositories/pokemon_repository.dart';

part 'home_controller.g.dart';

class HomeController = _HomeBase with _$HomeController;

abstract class _HomeBase with Store {
  PokemonRepository repository = PokemonRepository();

  @observable
  ObservableList<Pokemon> pokemons = ObservableList<Pokemon>.of([]);

  @action
  getPokemons() async {
    try {
      pokemons = await repository.fetchPokemons();
      pokemons.map((element) => element.name.toUpperCase());
    } catch (exception) {
      throw Exception('Could not get Pokemons');
    }
  }
}
