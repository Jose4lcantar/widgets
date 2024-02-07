import 'package:flutter/material.dart';
import '../models/tip_calculator_model.dart';

class TipPercentageSlider extends StatelessWidget {
  final TipCalculatorModel calculator;

  const TipPercentageSlider({required this.calculator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Porcentaje de Propina: ${calculator.tipPercentage.toStringAsFixed(0)}%',
          style: TextStyle(fontSize: 16),
        ),
        Slider(
          value: calculator.tipPercentage,
          min: 0,
          max: 30,
          divisions: 6,
          onChanged: (value) {
            calculator.tipPercentage = value;
          },
        ),
      ],
    );
  }
}
