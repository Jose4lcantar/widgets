import 'package:flutter/material.dart';
import 'screens/tip_calculator_screen.dart';

void main() {
  runApp(TipCalculatorApp());
}

class TipCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora de Propinas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TipCalculatorScreen(),
    );
  }
}
