import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/home/widgets/feed_card/feed_card_widget.dart';

main() {
  testWidgets('FeedCardWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(FeedCardWidget()));
    final textFinder = find.text('FeedCard');
    expect(textFinder, findsOneWidget);
  });
}
