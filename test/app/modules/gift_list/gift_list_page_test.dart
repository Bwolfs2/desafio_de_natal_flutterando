import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:desafio_de_natal_flutterando/app/modules/gift_list/gift_list_page.dart';

main() {
  testWidgets('GiftListPage has title', (WidgetTester tester) async {
    await tester
        .pumpWidget(buildTestableWidget(GiftListPage(title: 'GiftList')));
    final titleFinder = find.text('GiftList');
    expect(titleFinder, findsOneWidget);
  });
}
