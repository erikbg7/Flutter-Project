import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:futter_project_tfg/config/settings_items_config.dart';
import 'package:futter_project_tfg/screens/settings/credits/credits_screen.dart';
import 'package:futter_project_tfg/screens/settings/privacy/privacy_screen.dart';
import 'package:futter_project_tfg/screens/settings/settings_screen.dart';

import 'utils/index.dart';

Future testSettingsScreen(WidgetTester tester) async {
  final screen = Scaffold(body: SettingsScreen());
  await tester.pumpWidget(buildTestableWidget(screen));
  settingsMap.values.forEach((item) {
    expect(find.text(item.text), findsOneWidget);
  });
}

Future testCreditsScreen(WidgetTester tester) async {
  final screen = Scaffold(body: CreditsScreen());
  await tester.pumpWidget(buildTestableWidget(screen));
  expect(find.text('Credits'), findsOneWidget);
  expect(find.byType(Column), findsOneWidget);
  expect(find.text('wwww.github.com/erikbg7/Flutter-Project'), findsOneWidget);
}

Future testPrivacyScreen(WidgetTester tester) async {
  final screen = Scaffold(body: PrivacyScreen());
  await tester.pumpWidget(buildTestableWidget(screen));
  expect(find.text('Privacitat'), findsOneWidget);
  expect(find.byType(Center), findsOneWidget);
  expect(find.byType(Text), findsWidgets);
}

void main() {
  testWidgets('Displays a page for Settings/Credits', testCreditsScreen);
  testWidgets('Displays a page for Settings/Privacy', testPrivacyScreen);
  testWidgets('Displays a list of settings', testSettingsScreen);
}
