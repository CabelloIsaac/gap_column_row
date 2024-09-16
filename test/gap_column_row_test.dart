import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:gap_column_row/gap_column_row.dart';

void main() {
  testWidgets('GapColumn applies correct spacing', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: GapColumn(
          gap: 10.0,
          children: [Text('One'), Text('Two')],
        ),
      ),
    );

    final sizedBox = find.byType(SizedBox);
    expect(sizedBox, findsOneWidget);
  });

  testWidgets('GapRow applies correct spacing', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: GapRow(
          gap: 15.0,
          children: [Text('A'), Text('B')],
        ),
      ),
    );

    final sizedBox = find.byType(SizedBox);
    expect(sizedBox, findsOneWidget);
  });
}
