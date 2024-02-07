import 'package:flutter/material.dart';
import 'package:widgets/screens/tip_calculator_screen.dart'; // Importa el widget de la pantalla principal

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: TipCalculatorScreen(), // Usa la pantalla principal como pantalla de inicio
    );
  }
}
