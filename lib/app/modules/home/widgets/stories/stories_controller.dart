import 'package:mobx/mobx.dart';

part 'stories_controller.g.dart';

class StoriesController = _StoriesBase with _$StoriesController;

abstract class _StoriesBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
