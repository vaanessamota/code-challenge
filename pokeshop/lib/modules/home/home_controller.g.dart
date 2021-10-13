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

  final _$customIconAtom = Atom(name: '_HomeBase.customIcon');

  @override
  Icon get customIcon {
    _$customIconAtom.reportRead();
    return super.customIcon;
  }

  @override
  set customIcon(Icon value) {
    _$customIconAtom.reportWrite(value, super.customIcon, () {
      super.customIcon = value;
    });
  }

  final _$customSearchBarAtom = Atom(name: '_HomeBase.customSearchBar');

  @override
  Widget get customSearchBar {
    _$customSearchBarAtom.reportRead();
    return super.customSearchBar;
  }

  @override
  set customSearchBar(Widget value) {
    _$customSearchBarAtom.reportWrite(value, super.customSearchBar, () {
      super.customSearchBar = value;
    });
  }

  final _$queryTextAtom = Atom(name: '_HomeBase.queryText');

  @override
  String get queryText {
    _$queryTextAtom.reportRead();
    return super.queryText;
  }

  @override
  set queryText(String value) {
    _$queryTextAtom.reportWrite(value, super.queryText, () {
      super.queryText = value;
    });
  }

  final _$filteredPokemonAtom = Atom(name: '_HomeBase.filteredPokemon');

  @override
  ObservableList<Pokemon> get filteredPokemon {
    _$filteredPokemonAtom.reportRead();
    return super.filteredPokemon;
  }

  @override
  set filteredPokemon(ObservableList<Pokemon> value) {
    _$filteredPokemonAtom.reportWrite(value, super.filteredPokemon, () {
      super.filteredPokemon = value;
    });
  }

  final _$getPokemonsAsyncAction = AsyncAction('_HomeBase.getPokemons');

  @override
  Future getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  dynamic changeCustomIcon(Icon icon) {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.changeCustomIcon');
    try {
      return super.changeCustomIcon(icon);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeCustomSearchBar(Widget widget) {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.changeCustomSearchBar');
    try {
      return super.changeCustomSearchBar(widget);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic changeQueryText(String text) {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.changeQueryText');
    try {
      return super.changeQueryText(text);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void searchPokemonList() {
    final _$actionInfo = _$_HomeBaseActionController.startAction(
        name: '_HomeBase.searchPokemonList');
    try {
      return super.searchPokemonList();
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemons: ${pokemons},
customIcon: ${customIcon},
customSearchBar: ${customSearchBar},
queryText: ${queryText},
filteredPokemon: ${filteredPokemon}
    ''';
  }
}
