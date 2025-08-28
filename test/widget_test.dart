import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:demo_ci_cd_app/main.dart';

void main() {
  testWidgets('Counter increments when button is pressed', (WidgetTester tester) async {
    // Build app
    await tester.pumpWidget(const DemoApp());

    // Verify initial counter is 0
    expect(find.text('0'), findsOneWidget);

    // Tap the + button
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Expect counter to be 1
    expect(find.text('1'), findsOneWidget);  // ❌ This will fail because counter-- makes it -1
  });
}
