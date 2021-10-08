import 'package:azumo_challenge/components/caption1.dart';
import 'package:azumo_challenge/components/caption2.dart';
import 'package:azumo_challenge/components/kittieText.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart' as test;
import 'package:test/test.dart';

void main() {
  group('Should find text widgets by its texts or keys', () {
    test.testWidgets('Should find Caption1 widget by its key',
        (test.WidgetTester tester) async {
      final widgetCaption1 = Caption1(
        text: 'TAKE ME',
      );

      final textFinder = test.find.text('TAKE ME');

      await tester.pumpWidget(MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr, child: widgetCaption1),
      ));

      expect(textFinder, test.findsOneWidget);
    });

    test.testWidgets('Should find Caption2 by its key',
        (test.WidgetTester tester) async {
      final widgetCaption2 = Caption2(
        text: 'TO A',
      );

      final textFinder = test.find.text('TO A');

      await tester.pumpWidget(Material(
        child: Directionality(
            textDirection: TextDirection.ltr, child: widgetCaption2),
      ));

      expect(textFinder, test.findsOneWidget);
    });

    test.testWidgets('Should find KittieText by its key',
        (test.WidgetTester tester) async {
      final widgetKittieText = KittieText();
      final keyFinder = test.find.byKey(widgetKittieText.key!);

      await tester.pumpWidget(
        Material(
            child: Directionality(
                textDirection: TextDirection.ltr, child: widgetKittieText)),
      );

      expect(keyFinder, test.findsOneWidget);
    });
  });

  group("Shouldn't find text widgets by its texts or keys", () {
    test.testWidgets('Should find Caption1 widget by its key',
        (test.WidgetTester tester) async {
      final widgetCaption1 = Caption1(
        text: 'ME TAKE',
      );

      final textFinder = test.find.text('TAKE ME');

      await tester.pumpWidget(MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr, child: widgetCaption1),
      ));

      expect(textFinder, test.findsNothing);
    });

    test.testWidgets('Should find Caption2 by its key',
        (test.WidgetTester tester) async {
      final widgetCaption2 = Caption2(
        text: 'A TO',
      );

      final textFinder = test.find.text('TO A');

      await tester.pumpWidget(Material(
        child: Directionality(
            textDirection: TextDirection.ltr, child: widgetCaption2),
      ));

      expect(textFinder, test.findsNothing);
    });

    test.testWidgets('Should find KittieText by its key',
        (test.WidgetTester tester) async {
      final widgetKittieText = KittieText(key: Key('AnotherKey'));
      final keyFinder = test.find.byKey(Key('KittieText'));

      await tester.pumpWidget(
        Material(
            child: Directionality(
                textDirection: TextDirection.ltr, child: widgetKittieText)),
      );

      expect(keyFinder, test.findsNothing);
    });
  });
}
