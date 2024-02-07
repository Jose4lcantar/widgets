import 'package:flutter/material.dart';
import '../models/tip_calculator_model.dart';

class BillAmountInput extends StatelessWidget {
  final TipCalculatorModel calculator;

  const BillAmountInput({required this.calculator});

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      decoration: InputDecoration(
        labelText: 'Monto de la factura',
      ),
      onChanged: (value) {
        calculator.billAmount = double.tryParse(value) ?? 0.0;
      },
    );
  }
}
