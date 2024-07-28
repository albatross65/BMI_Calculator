import 'package:flutter/material.dart';
import 'constant.dart';
import 'ContainerCode.dart';
import 'input_page.dart';
import 'CalculatorFile.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen(
      {required this.interpretation,
        required this.bmiResult,
        required this.resultText,
        required this.weightAdjustment});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  final String weightAdjustment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                Color(0xff111328),
                Color(0xffF3904F),
                Color(0xff111328),
              ],
            ),
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white, // This will change the color of the back arrow to white
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff111328),
              Color(0xffF3904F),
              Color(0xff111328),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text('Your Results', style: kTittleStyle),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: RepeatContainerCode(
                colors: activeColor,
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(resultText.toUpperCase(), style: kLabelStyle),
                    Text(bmiResult, style: kTittleStyle),
                    Text(interpretation, style: kLabelStyle),
                    Text(weightAdjustment, style: kLabelStyle),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => InputPage(),
                    ),
                  );
                },
                child: Container(
                  child: Center(
                      child: Text(
                        'ReCalculate',
                        style: kLabelStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffD3783E), Color(0xffF3904F)],
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5.0,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(top: 10.0),
                  width: double.infinity,
                  height: 80.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
