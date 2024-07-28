import 'package:flutter/material.dart';
import 'input_page.dart';
void main() {
  runApp(const BMICalculator());
}
class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: InputPage(),
        backgroundColor: Color(0xff111328),
      ),
    );
  }
}
