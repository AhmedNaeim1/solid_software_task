import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:solid_software_task/home_page.dart';

void main() {
  testWidgets('HomePage widget test', (WidgetTester tester) async {
    // Build the HomePage widget
    await tester.pumpWidget(const MaterialApp(home: HomePage()));

    // Expect the initial background color to be the seed color
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor,
        Colors.deepPurple);

    // Tap on the widget
    await tester.tap(find.byType(GestureDetector));
    await tester.pump();

    // Expect the background color to change
    expect(tester.widget<Scaffold>(find.byType(Scaffold)).backgroundColor,
        isNot(Colors.deepPurple));
  });
}
