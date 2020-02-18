import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/login/widgets/animation_page/animation_page_controller.dart';
import 'package:mobx_login/app/modules/login/login_module.dart';

void main() {
  initModule(LoginModule());
  AnimationPageController animationpage;

  setUp(() {
    animationpage = LoginModule.to.get<AnimationPageController>();
  });

  group('AnimationPageController Test', () {
    test("First Test", () {
      expect(animationpage, isInstanceOf<AnimationPageController>());
    });

    test("Set Value", () {
      expect(animationpage.value, equals(0));
      animationpage.increment();
      expect(animationpage.value, equals(1));
    });
  });
}
