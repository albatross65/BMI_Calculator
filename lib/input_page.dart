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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Row(
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
                    iconColor: selectedGender == Gender.male ? Colors.black : null,
                    textColor: selectedGender == Gender.male ? Colors.black : null,
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
                    iconColor: selectedGender == Gender.female ? Colors.black : null,
                    textColor: selectedGender == Gender.female ? Colors.black : null,
                  ),
                  border: selectedGender == Gender.female
                      ? Border.all(color: Colors.black, width: 2)
                      : null,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: RepeatContainerCode(
            colors: deActiveColor,
            cardwidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Height', style: kLabelStyle),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderHeight.toStringAsFixed(1),
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
                  activeColor: Color(0xff363795),
                  inactiveColor: Color(0xff3B4371),
                  divisions: 100,
                  label: sliderHeight.round().toString(),
                  onChanged: (double newValue) {
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: deActiveColor,
                  cardwidget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Weight', style: kLabelStyle),
                      Text(sliderWeight.toString(), style: kNumberStyle),
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}