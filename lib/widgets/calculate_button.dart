import 'package:flutter/material.dart';
import '../models/tip_calculator_model.dart';

class CalculateButton extends StatelessWidget {
  final TipCalculatorModel calculator;

  const CalculateButton({required this.calculator});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        calculator.calculateTip();
        _showTipDialog(context, calculator);
      },
      child: Text('Calcular Propina'),
    );
  }

  void _showTipDialog(BuildContext context, TipCalculatorModel calculator) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Propina Calculada'),
        content: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Monto de la Factura: \$${calculator.billAmount.toStringAsFixed(2)}'),
            Text('Propina: \$${calculator.tipAmount.toStringAsFixed(2)}'),
            Text('Total a Pagar: \$${calculator.totalAmount.toStringAsFixed(2)}'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
