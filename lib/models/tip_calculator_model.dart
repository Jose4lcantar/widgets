class TipCalculatorModel {
  double billAmount = 0.0;
  double tipPercentage = 15.0;
  double tipAmount = 0.0;
  double totalAmount = 0.0;

  void calculateTip() {
    tipAmount = billAmount * (tipPercentage / 100);
    totalAmount = billAmount + tipAmount;
  }
}
