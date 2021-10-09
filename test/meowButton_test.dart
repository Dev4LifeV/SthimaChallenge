import 'package:azumo_challenge/components/meowButton/meowButton.dart';
import 'package:azumo_challenge/components/meowButton/meowButton_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  group('', () {
    testWidgets('Should find a widget using a key and tap it',
        (WidgetTester tester) async {
      final MeowButtonController _controller = Get.put(MeowButtonController());
      const Key meowButtonKey = Key('MeowButtonKey');
      final keyFinder = find.byKey(meowButtonKey);

      await tester.pumpWidget(Material(
        child: Directionality(
          child: MeowButton(
            key: meowButtonKey,
            onTap: _controller.fetchData,
          ),
          textDirection: TextDirection.ltr,
        ),
      ));

      await tester.tap(keyFinder);

      expect(keyFinder, findsOneWidget);
    });

    testWidgets("Shouldn't find a widget using a key",
        (WidgetTester tester) async {
      final MeowButtonController _controller = Get.put(MeowButtonController());
      const Key differentKey = Key('differentKey');
      final keyFinder = find.byKey(differentKey);

      await tester.pumpWidget(Material(
        child: Directionality(
          child: MeowButton(
            onTap: _controller.fetchData,
          ),
          textDirection: TextDirection.ltr,
        ),
      ));

      expect(keyFinder, findsNothing);
    });
  });
}
