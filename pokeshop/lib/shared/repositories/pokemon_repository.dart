import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import 'package:pokeshop/shared/models/pokemon_model.dart';

class PokemonRepository {
  final Dio dio = Dio();

  Future<ObservableList<Pokemon>> fetchPokemons() async {
    try {
      var headers = {
        'Keep-Alive': 'timeout=5, max=100',
      };

      var response = await dio.get(
          'https://pokeapi.co/api/v2/pokemon?limit=151%27',
          options: Options(headers: headers));

      if (response.statusCode == 200) {
        List<dynamic> data = response.data['results'];
        List urls = [];
        ObservableList<Pokemon> pokemonList = ObservableList<Pokemon>.of([]);
        data.forEach((element) async {
          urls.add(element['url']);
        });

        for (var i = 1; i < 25; i++) {
          Pokemon pokemon = await fetchPokemonsData(urls[i]);
          pokemonList.add(pokemon);
        }
        return pokemonList;
      }

      throw Exception(
          'Could not fetch Pokemons, status code ${response.statusCode}');
    } catch (exception) {
      throw Exception('Could not fetch Pokemon');
    }
  }

  Future<Pokemon> fetchPokemonsData(String url) async {
    try {
      var headers = {
        'Keep-Alive': 'timeout=5, max=100',
      };

      var response = await dio.get(url,
          options: Options(
              headers: headers,
              validateStatus: (status) {
                return status! < 500;
              }));

      if (response.statusCode == 200) {
        Pokemon pokemon = Pokemon.fromJson(response.data);
        return pokemon;
      }

      throw Exception(
          'Could not fetch Pokemons data, status code ${response.statusCode}');
    } catch (exception) {
      throw Exception('Could not fetch Pokemon Data');
    }
  }
}
