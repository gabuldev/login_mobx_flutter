import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/shared/widgets/flat_button/flat_button_controller.dart';
import 'package:mobx_login/app/app_module.dart';

void main() {
  initModule(AppModule());
  FlatButtonController flatbutton;

  setUp(() {
    flatbutton = AppModule.to.get<FlatButtonController>();
  });

  group('FlatButtonController Test', () {
    test("First Test", () {
      expect(flatbutton, isInstanceOf<FlatButtonController>());
    });

    test("Set Value", () {
      expect(flatbutton.value, equals(0));
      flatbutton.increment();
      expect(flatbutton.value, equals(1));
    });
  });
}
