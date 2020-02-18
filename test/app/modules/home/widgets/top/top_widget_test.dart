import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/home/widgets/top/top_widget.dart';

main() {
  testWidgets('TopWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(TopWidget()));
    final textFinder = find.text('Top');
    expect(textFinder, findsOneWidget);
  });
}
