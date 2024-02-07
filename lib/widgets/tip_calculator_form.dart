import 'package:flutter/material.dart';
import '../models/tip_calculator_model.dart';
import 'bill_amount_input.dart';
import 'tip_percentage_slider.dart';
import 'calculate_button.dart';

class TipCalculatorForm extends StatefulWidget {
  @override
  _TipCalculatorFormState createState() => _TipCalculatorFormState();
}

class _TipCalculatorFormState extends State<TipCalculatorForm> {
  final TipCalculatorModel _calculator = TipCalculatorModel();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        BillAmountInput(calculator: _calculator),
        SizedBox(height: 20),
        TipPercentageSlider(calculator: _calculator),
        SizedBox(height: 20),
        CalculateButton(calculator: _calculator),
      ],
    );
  }
}
