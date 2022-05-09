import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  blankScreenUnderTest() {
    return MaterialApp(home: Container());
  }

  group("Blank Screen Test", () {
    testWidgets('title Edit Contact is not displayed',
        (WidgetTester tester) async {
      await tester.pumpWidget(blankScreenUnderTest());
      await tester.pumpAndSettle(const Duration(seconds: 2));
      expect(find.text("Edit Contact"), findsNothing);
    });
  });
}
