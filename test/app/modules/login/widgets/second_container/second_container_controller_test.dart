import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/login/widgets/second_container/second_container_controller.dart';
import 'package:mobx_login/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  SecondContainerController secondcontainer;

  setUp(() {
    secondcontainer = LoginModule.to.get<SecondContainerController>();
  });

  group('SecondContainerController Test', () {
    test("First Test", () {
      expect(secondcontainer, isInstanceOf<SecondContainerController>());
    });

    test("Set Value", () {
      expect(secondcontainer.value, equals(0));
      secondcontainer.increment();
      expect(secondcontainer.value, equals(1));
    });
  });
}
