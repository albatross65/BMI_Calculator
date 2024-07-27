import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'constant.dart';
import 'ContainerCode.dart';
import 'input_page.dart';
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
      body:
      Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff3B4371),
              Color(0xffF3904F),
              Color(0xff3B4371),
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
                  child: Text('Your Results',style: kTittleStyle),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: RepeatContainerCode(
                colors:activeColor ,
                cardwidget: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   Text('Normal',style: kLabelStyle),
                   Text('18.3',style: kTittleStyle),
                   Text('BMI is low You should have to work more.',style: kLabelStyle),
                 ],
                ),

              ),
            ),
            Expanded(child: GestureDetector(
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
                      style: kLabelStyle,
                    )),
                color: Color(0xffF3904F),
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,
              ),
            ), ),
          ],
        ),
      ),
    );
  }
}
