// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_widget_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppWidgetController on _AppWidgetBase, Store {
  final _$currentIndexAtom = Atom(name: '_AppWidgetBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$_AppWidgetBaseActionController =
      ActionController(name: '_AppWidgetBase');

  @override
  dynamic changeCurrentIndex(dynamic index) {
    final _$actionInfo = _$_AppWidgetBaseActionController.startAction(
        name: '_AppWidgetBase.changeCurrentIndex');
    try {
      return super.changeCurrentIndex(index);
    } finally {
      _$_AppWidgetBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex}
    ''';
  }
}
