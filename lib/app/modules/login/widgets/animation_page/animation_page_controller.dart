import 'package:mobx/mobx.dart';

part 'animation_page_controller.g.dart';

class AnimationPageController = _AnimationPageBase
    with _$AnimationPageController;

abstract class _AnimationPageBase with Store {
  @observable
  bool isAnimation = false;

  @action
  void clicked() => isAnimation = !isAnimation;
}
