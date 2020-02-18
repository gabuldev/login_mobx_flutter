import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/login/widgets/intro_container/intro_container_controller.dart';
import 'package:mobx_login/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  IntroContainerController introcontainer;

  setUp(() {
    introcontainer = LoginModule.to.get<IntroContainerController>();
  });

  group('IntroContainerController Test', () {
    test("First Test", () {
      expect(introcontainer, isInstanceOf<IntroContainerController>());
    });

    test("Set Value", () {
      expect(introcontainer.value, equals(0));
      introcontainer.increment();
      expect(introcontainer.value, equals(1));
    });
  });
}
