import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;
  double _bmi = 0.0; // Initialize _bmi

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have higher than normal body weight. Try to Exercise more.';
    } else if (_bmi >= 18.5) {
      return 'You have a Normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

  String getWeightAdjustment() {
    if (_bmi >= 25) {
      // Calculate weight to lose to reach a BMI of 24.9
      double targetWeight = 24.9 * pow(height / 100, 2);
      double weightToLose = weight - targetWeight;
      return 'You need to lose ${weightToLose.toStringAsFixed(1)} kg to reach a normal BMI.';
    } else if (_bmi < 18.5) {
      // Calculate weight to gain to reach a BMI of 18.5
      double targetWeight = 18.5 * pow(height / 100, 2);
      double weightToGain = targetWeight - weight;
      return 'You need to gain ${weightToGain.toStringAsFixed(1)} kg to reach a normal BMI.';
    } else {
      return 'Your weight is in the normal range.';
    }
  }
}
