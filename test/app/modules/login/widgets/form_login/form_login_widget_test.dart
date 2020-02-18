import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/modules/login/widgets/form_login/form_login_widget.dart';

main() {
  testWidgets('FormLoginWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(FormLoginWidget()));
    final textFinder = find.text('FormLogin');
    expect(textFinder, findsOneWidget);
  });
}
