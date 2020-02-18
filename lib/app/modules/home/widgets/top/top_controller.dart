import 'package:mobx/mobx.dart';

part 'top_controller.g.dart';

class TopController = _TopBase with _$TopController;

abstract class _TopBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
