import 'package:f_currency_converter_activity/ui/pages/converter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ui', () {
    group('display', () {
      testWidgets('currency', (tester) async {
        await tester.pumpWidget(const MaterialApp(home: ConverterPage()));

        expect(
            (tester.widget(find.byKey(const Key('DropdownButton1')))
                    as DropdownButton)
                .value,
            equals('USD'));

        expect(
            (tester.widget(find.byKey(const Key('TextCurrency1'))) as Text)
                .data,
            equals('USD'));

        expect(
            (tester.widget(find.byKey(const Key('DropdownButton2')))
                    as DropdownButton)
                .value,
            equals('COP'));

        expect(
            (tester.widget(find.byKey(const Key('TextCurrency2'))) as Text)
                .data,
            equals('COP'));
      });
      testWidgets('values', (tester) async {
        await tester.pumpWidget(const MaterialApp(home: ConverterPage()));
        expect(find.text('0'), findsWidgets);
        expect(find.text('0.0'), findsOneWidget);
      });
    });
    group('keypad', () {
      testWidgets('keys', (tester) async {
        await tester.pumpWidget(const MaterialApp(home: ConverterPage()));
        expect(find.text('0'), findsWidgets);
        expect(find.text('1'), findsOneWidget);
        expect(find.text('2'), findsOneWidget);
        expect(find.text('3'), findsOneWidget);
        expect(find.text('4'), findsOneWidget);
        expect(find.text('5'), findsOneWidget);
        expect(find.text('6'), findsOneWidget);
        expect(find.text('7'), findsOneWidget);
        expect(find.text('8'), findsOneWidget);
        expect(find.text('9'), findsOneWidget);
        expect(find.text('Reset'), findsOneWidget);
      });
    });
  });
}
