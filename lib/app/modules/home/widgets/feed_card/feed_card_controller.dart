import 'package:mobx/mobx.dart';

part 'feed_card_controller.g.dart';

class FeedCardController = _FeedCardBase with _$FeedCardController;

abstract class _FeedCardBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
