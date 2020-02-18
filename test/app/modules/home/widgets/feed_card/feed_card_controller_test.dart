import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx_login/app/modules/home/widgets/feed_card/feed_card_controller.dart';
import 'package:mobx_login/app/modules/home/home_module.dart';

void main() {
  initModule(HomeModule());
  FeedCardController feedcard;

  setUp(() {
    feedcard = HomeModule.to.get<FeedCardController>();
  });

  group('FeedCardController Test', () {
    test("First Test", () {
      expect(feedcard, isInstanceOf<FeedCardController>());
    });

    test("Set Value", () {
      expect(feedcard.value, equals(0));
      feedcard.increment();
      expect(feedcard.value, equals(1));
    });
  });
}
