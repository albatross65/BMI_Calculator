import 'input_page.dart';
import 'package:flutter/material.dart';

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
        appBar: AppBar(
          centerTitle: true,
          title:  Text('BMICalculator',
              style: TextStyle(fontSize: 22,letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 2,
                      offset: Offset(2, 2),
                    )
                  ]
              )
          ),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff3B4371),
                  Color(0XffF3904F),
                  Color(0xff3B4371),
                ],
              ),
            ),
          ),
        ),
        body: InputPage(),
        backgroundColor: Color(0xff3B4371),
      ),
    );
  }
}
