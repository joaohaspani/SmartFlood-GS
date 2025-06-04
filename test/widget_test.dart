import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:smartflood/main.dart';

void main() {
  testWidgets('Verifica se o título aparece', (WidgetTester tester) async {
    await tester.pumpWidget(SmartFloodApp());

    expect(find.text('Monitoramento de Enchentes'), findsOneWidget);
  });

  testWidgets('Slider altera pluviosidade', (WidgetTester tester) async {
    await tester.pumpWidget(SmartFloodApp());

    final sliderFinder = find.byType(Slider);
    expect(sliderFinder, findsOneWidget);

    await tester.drag(sliderFinder, Offset(50, 0));
    await tester.pump();

    // Verifica se o texto foi alterado
    expect(find.textContaining('mm'), findsWidgets);
  });
}
