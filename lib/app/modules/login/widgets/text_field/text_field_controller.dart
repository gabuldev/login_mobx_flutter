import 'package:mobx/mobx.dart';

part 'text_field_controller.g.dart';

class TextFieldController = _TextFieldBase with _$TextFieldController;

abstract class _TextFieldBase with Store {
  @observable
  bool viewPassword = true;

  @action
  void changeView() {
    viewPassword = !viewPassword;
  }
}
