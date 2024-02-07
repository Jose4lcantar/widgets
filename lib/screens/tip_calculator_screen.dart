import 'package:flutter/material.dart';
import '../widgets/tip_calculator_form.dart';

class TipCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de Propinas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TipCalculatorForm(),
      ),
    );
  }
}
