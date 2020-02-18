import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/login/widgets/text_field/text_field_controller.dart';
import 'package:mobx_login/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  TextFieldController textfield;

  setUp(() {
    textfield = LoginModule.to.get<TextFieldController>();
  });

  group('TextFieldController Test', () {
    test("First Test", () {
      expect(textfield, isInstanceOf<TextFieldController>());
    });

    test("Set Value", () {
      expect(textfield.value, equals(0));
      textfield.increment();
      expect(textfield.value, equals(1));
    });
  });
}
