import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerCode.dart';
import 'IconTextCode.dart';
import 'constant.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedGender;
  int sliderHeight = 180;
  int sliderWeight = 60;
  int sliderAge = 20;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Gender selection row
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
                    iconColor:
                    selectedGender == Gender.female ? Colors.black : null,
                    textColor:
                    selectedGender == Gender.female ? Colors.black : null,
                  ),
                  border: selectedGender == Gender.female
                      ? Border.all(color: Colors.black, width: 2)
                      : null,
                ),
              ),
            ],
          ),
          // Height slider
          RepeatContainerCode(
            colors: deActiveColor,
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height', style: kLabelStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderHeight.toString(),
                      style: kNumberStyle,
                    ),
                    Text(
                      'cm',
                      style: kLabelStyle,
                    ),
                  ],
                ),
                Slider(
                  value: sliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: const Color(0xff363795),
                  inactiveColor: const Color(0xff3B4371),
                  divisions: 100,
                  label: sliderHeight.toString(),
                  onChanged: (double newValue) {
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
          // Weight and Age sliders
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
          // Bottom container
          Container(
            color: Color(0xffF3904F),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
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
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: const Color(0xff363795),
    );
  }
}
