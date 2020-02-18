import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/login/widgets/intro_container/intro_container_widget.dart';

main() {
  testWidgets('IntroContainerWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(IntroContainerWidget()));
    final textFinder = find.text('IntroContainer');
    expect(textFinder, findsOneWidget);
  });
}
