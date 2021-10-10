// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CartController on _CartBase, Store {
  final _$cart_listAtom = Atom(name: '_CartBase.cart_list');

  @override
  ObservableList<Pokemon> get cart_list {
    _$cart_listAtom.reportRead();
    return super.cart_list;
  }

  @override
  set cart_list(ObservableList<Pokemon> value) {
    _$cart_listAtom.reportWrite(value, super.cart_list, () {
      super.cart_list = value;
    });
  }

  final _$addPokemonToListAsyncAction =
      AsyncAction('_CartBase.addPokemonToList');

  @override
  Future addPokemonToList(Pokemon pokemon) {
    return _$addPokemonToListAsyncAction
        .run(() => super.addPokemonToList(pokemon));
  }

  final _$removePokemonFromListAsyncAction =
      AsyncAction('_CartBase.removePokemonFromList');

  @override
  Future removePokemonFromList(Pokemon pokemon) {
    return _$removePokemonFromListAsyncAction
        .run(() => super.removePokemonFromList(pokemon));
  }

  final _$_CartBaseActionController = ActionController(name: '_CartBase');

  @override
  dynamic confirmPurchase() {
    final _$actionInfo = _$_CartBaseActionController.startAction(
        name: '_CartBase.confirmPurchase');
    try {
      return super.confirmPurchase();
    } finally {
      _$_CartBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
cart_list: ${cart_list}
    ''';
  }
}
