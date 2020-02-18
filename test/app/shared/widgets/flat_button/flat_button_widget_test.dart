import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:mobx_login/app/shared/widgets/flat_button/flat_button_widget.dart';

main() {
  testWidgets('FlatButtonWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(FlatButtonWidget()));
    final textFinder = find.text('FlatButton');
    expect(textFinder, findsOneWidget);
  });
}
