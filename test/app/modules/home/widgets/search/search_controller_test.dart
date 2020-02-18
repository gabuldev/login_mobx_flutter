import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/home/widgets/search/search_controller.dart';
import 'package:mobx_login/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  SearchController search;

  setUp(() {
    search = HomeModule.to.get<SearchController>();
  });

  group('SearchController Test', () {
    test("First Test", () {
      expect(search, isInstanceOf<SearchController>());
    });

    test("Set Value", () {
      expect(search.value, equals(0));
      search.increment();
      expect(search.value, equals(1));
    });
  });
}
