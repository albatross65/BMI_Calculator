import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerCode.dart';
import 'IconTextCode.dart';
import 'ResultFile.dart';
import 'constant.dart';
import 'CalculatorFile.dart';

enum Gender { male, female }
enum HeightUnit { cm, feetInches }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  HeightUnit selectedHeightUnit = HeightUnit.cm;
  int heightCm = 180;
  int heightFeet = 5;
  int heightInches = 11;
  int sliderWeight = 60;
  int sliderAge = 20;

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
      ),
      body: SingleChildScrollView(
        child: Material(
          color: Color(0xff111328),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                children: [
                  Expanded(
                    child: RepeatContainerCode(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colors: selectedGender == Gender.male
                          ? activeColor
                          : deActiveColor,
                      cardwidget: RepeatIconTextCode(
                        iconData: FontAwesomeIcons.person,
                        label: 'Male',
                        iconColor:
                        selectedGender == Gender.male ? Colors.black : null,
                        textColor:
                        selectedGender == Gender.male ? Colors.black : null,
                      ),
                      border: selectedGender == Gender.male
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                    ),
                  ),
                  Expanded(
                    child: RepeatContainerCode(
                      onPressed: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colors: selectedGender == Gender.female
                          ? activeColor
                          : deActiveColor,
                      cardwidget: RepeatIconTextCode(
                        iconData: FontAwesomeIcons.personDress,
                        label: 'Female',
                        iconColor: selectedGender == Gender.female
                            ? Colors.black
                            : null,
                        textColor: selectedGender == Gender.female
                            ? Colors.black
                            : null,
                      ),
                      border: selectedGender == Gender.female
                          ? Border.all(color: Colors.black, width: 2)
                          : null,
                    ),
                  ),
                ],
              ),
              RepeatContainerCode(
                colors: deActiveColor,
                cardwidget: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height', style: kLabelStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ToggleButtons(
                          isSelected: [
                            selectedHeightUnit == HeightUnit.cm,
                            selectedHeightUnit == HeightUnit.feetInches
                          ],
                          onPressed: (int index) {
                            setState(() {
                              selectedHeightUnit = index == 0
                                  ? HeightUnit.cm
                                  : HeightUnit.feetInches;
                            });
                          },
                          color: Colors.white, // Text color when unselected
                          selectedColor: Colors.black, // Text color when selected
                          fillColor: activeColor, // Background color when selected
                          borderColor: deActiveColor,
                          selectedBorderColor: activeColor,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                'cm',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: selectedHeightUnit == HeightUnit.cm
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                'ft/in',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: selectedHeightUnit == HeightUnit.feetInches
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    if (selectedHeightUnit == HeightUnit.cm)
                      Column(
                        children: [
                          Text(heightCm.toString(), style: kNumberStyle),
                          Slider(
                            value: heightCm.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: Color(0xff1D1E33),
                            inactiveColor: Color(0xff111328),
                            divisions: 100,
                            label: heightCm.toString(),
                            onChanged: (double newValue) {
                              setState(() {
                                heightCm = newValue.round();
                              });
                            },
                          ),
                        ],
                      )
                    else
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Text('Feet', style: kLabelStyle),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove, color: Color(0xff111328)),  // Set the color to body color
                                    onPressed: () {
                                      setState(() {
                                        if (heightFeet > 1) heightFeet--;
                                      });
                                    },
                                  ),
                                  Text(heightFeet.toString(), style: kNumberStyle),
                                  IconButton(
                                    icon: Icon(Icons.add, color: Color(0xff111328)),  // Set the color to body color
                                    onPressed: () {
                                      setState(() {
                                        if (heightFeet < 8) heightFeet++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(width: 16.0),
                          Column(
                            children: [
                              Text('Inches', style: kLabelStyle),
                              Row(
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.remove, color: Color(0xff111328)),  // Set the color to body color
                                    onPressed: () {
                                      setState(() {
                                        if (heightInches > 0) heightInches--;
                                      });
                                    },
                                  ),
                                  Text(heightInches.toString(), style: kNumberStyle),
                                  IconButton(
                                    icon: Icon(Icons.add, color: Color(0xff111328)),  // Set the color to body color
                                    onPressed: () {
                                      setState(() {
                                        if (heightInches < 11) heightInches++;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: RepeatContainerCode(
                      colors: deActiveColor,
                      cardwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight', style: kLabelStyle),
                          Text(sliderWeight.toString(), style: kNumberStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIcon(
                                  iconData: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      sliderWeight--;
                                    });
                                  }),
                              SizedBox(width: 10),
                              RoundIcon(
                                  iconData: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      sliderWeight++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: RepeatContainerCode(
                      colors: deActiveColor,
                      cardwidget: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age', style: kLabelStyle),
                          Text(sliderAge.toString(), style: kNumberStyle),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              RoundIcon(
                                  iconData: FontAwesomeIcons.minus,
                                  onPress: () {
                                    setState(() {
                                      sliderAge--;
                                    });
                                  }),
                              SizedBox(width: 10),
                              RoundIcon(
                                  iconData: FontAwesomeIcons.plus,
                                  onPress: () {
                                    setState(() {
                                      sliderAge++;
                                    });
                                  })
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  int heightInCm = selectedHeightUnit == HeightUnit.cm
                      ? heightCm
                      : (heightFeet * 30.48 + heightInches * 2.54).round();
                  CalculatorBrain calc = CalculatorBrain(
                      height: heightInCm, weight: sliderWeight);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultScreen(
                        bmiResult: calc.calculateBMI(),
                        resultText: calc.getResult(),
                        interpretation: calc.getInterpretation(),
                      ),
                    ),
                  );
                },
                child: Container(
                  child: Center(
                      child: Text(
                        'Calculate',
                        style: kLabelStyle.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xffF3904F), Color(0xffD3783E)],
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
            ],
          ),
        ),
      ),
    );
  }
}

class RoundIcon extends StatelessWidget {
  const RoundIcon({
    required this.iconData,
    required this.onPress,
  });

  final IconData iconData;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        iconData,
        size: 16.0,
        color: Colors.white // Set the color to body color
      ),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 50.0,
        height: 45.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xff1D1E33),
    );
  }
}
