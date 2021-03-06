// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futter_project_tfg/screens/identify/components/identify_methods.dart';
import 'utils/index.dart';

Future testIdentificationMethods(WidgetTester tester) async {
  final screen = Scaffold(body: IdentifyMethods());
  await tester.pumpWidget(buildTestableWidget(screen));

  expect(find.text('Camara'), findsOneWidget);
  expect(find.text('Galeria'), findsOneWidget);
}

void main() {
  testWidgets('Displays Gallery and Camera buttons', testIdentificationMethods);
}

// Build our app and trigger a frame.
// Verify that our counter starts at 0.
// Tap the '+' icon and trigger a frame.
//    await tester.tap(find.byIcon(Icons.add));
//    await tester.pump();

// Verify that our counter has incremented.
//    expect(find.text('0'), findsNothing);
//    expect(find.text('1'), findsOneWidget);