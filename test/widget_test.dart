import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:pixo/main.dart';

void main() {
  testWidgets('MyApp test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());  // Usamos const para mejorar el rendimiento.

    // Añadir las pruebas que deseas realizar aquí.
  });
}
