// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$pokemonsAtom = Atom(name: '_HomeBase.pokemons');

  @override
  ObservableList<Pokemon> get pokemons {
    _$pokemonsAtom.reportRead();
    return super.pokemons;
  }

  @override
  set pokemons(ObservableList<Pokemon> value) {
    _$pokemonsAtom.reportWrite(value, super.pokemons, () {
      super.pokemons = value;
    });
  }

  final _$getPokemonsAsyncAction = AsyncAction('_HomeBase.getPokemons');

  @override
  Future getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons}
    ''';
  }
}
