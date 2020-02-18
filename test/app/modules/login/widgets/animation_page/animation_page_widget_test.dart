import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/login/widgets/animation_page/animation_page_widget.dart';

main() {
  testWidgets('AnimationPageWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(AnimationPageWidget()));
    final textFinder = find.text('AnimationPage');
    expect(textFinder, findsOneWidget);
  });
}
