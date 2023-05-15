import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_task/home_page.dart';

void main() {
  testWidgets('HomePage widget test', (WidgetTester tester) async {
    // Build the HomePage widget
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Get the initial background color
    final initialColor =
        tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

    // Tap on the widget
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Get the updated background color
    final updatedColor =
        tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor;

    // Expect the initial and updated colors to be different
    expect(updatedColor, isNot(initialColor));
  });
}
