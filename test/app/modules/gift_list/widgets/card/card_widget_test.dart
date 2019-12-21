import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:desafio_de_natal_flutterando/app/modules/gift_list/widgets/card/card_widget.dart';

main() {
  testWidgets('CardWidget has message', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(CardWidget()));
    final textFinder = find.text('Card');
    expect(textFinder, findsOneWidget);
  });
}
