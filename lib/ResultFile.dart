import 'package:flutter/material.dart';
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(
            fontSize: 22,
            letterSpacing: 2.5,
            fontWeight: FontWeight.bold,
            shadows: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 2,
                offset: Offset(3, 1),
              ),
            ],
          ),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff3B4371),
                Color(0xffF3904F),
                Color(0xff3B4371),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
