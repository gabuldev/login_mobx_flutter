import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/login/widgets/second_container/second_container_widget.dart';

main() {
  testWidgets('SecondContainerWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SecondContainerWidget()));
    final textFinder = find.text('SecondContainer');
    expect(textFinder, findsOneWidget);
  });
}
