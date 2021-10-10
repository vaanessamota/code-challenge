import 'package:mobx/mobx.dart';

part 'app_widget_controller.g.dart';

class AppWidgetController = _AppWidgetBase with _$AppWidgetController;

abstract class _AppWidgetBase with Store {
  @observable
  int currentIndex = 0;

  @action
  changeCurrentIndex(index) => currentIndex = index;
}
