import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/home/widgets/stories/stories_controller.dart';
import 'package:mobx_login/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  StoriesController stories;

  setUp(() {
    stories = HomeModule.to.get<StoriesController>();
  });

  group('StoriesController Test', () {
    test("First Test", () {
      expect(stories, isInstanceOf<StoriesController>());
    });

    test("Set Value", () {
      expect(stories.value, equals(0));
      stories.increment();
      expect(stories.value, equals(1));
    });
  });
}
