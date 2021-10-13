import 'package:flutter/material.dart';
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
    } catch (exception) {
      throw Exception('Could not get Pokemons');
    }
  }

  @observable
  Icon customIcon = Icon(Icons.search);

  @action
  changeCustomIcon(Icon icon) => customIcon = icon;

  @observable
  Widget customSearchBar = Text('PokeShop');

  @action
  changeCustomSearchBar(Widget widget) => customSearchBar = widget;

  @observable
  String queryText = '';

  @action
  changeQueryText(String text) => queryText = text;

  @observable
  ObservableList<Pokemon> filteredPokemon = ObservableList.of([]);

  @action
  void searchPokemonList() {
    filteredPokemon.clear();
    if (queryText.isNotEmpty) {
      for (Pokemon pokemon in pokemons) {
        String pokemonName = pokemon.name.toLowerCase();
        if (pokemonName.contains(queryText.toLowerCase())) {
          filteredPokemon.add(pokemon);
        }
      }
    }
  }
}
