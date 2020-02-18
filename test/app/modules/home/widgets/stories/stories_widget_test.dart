import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/home/widgets/stories/stories_widget.dart';

main() {
  testWidgets('StoriesWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(StoriesWidget()));
    final textFinder = find.text('Stories');
    expect(textFinder, findsOneWidget);
  });
}
