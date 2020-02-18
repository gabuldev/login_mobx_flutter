import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/home/widgets/top/top_controller.dart';
import 'package:mobx_login/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  TopController top;

  setUp(() {
    top = HomeModule.to.get<TopController>();
  });

  group('TopController Test', () {
    test("First Test", () {
      expect(top, isInstanceOf<TopController>());
    });

    test("Set Value", () {
      expect(top.value, equals(0));
      top.increment();
      expect(top.value, equals(1));
    });
  });
}
