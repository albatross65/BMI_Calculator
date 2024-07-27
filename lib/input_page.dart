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
                  colors: selectedGender == Gender.male ? activeColor : deActiveColor,
                  cardwidget: RepeatIconTextCode(
                    iconData: FontAwesomeIcons.person,
                    label: 'Male',
                    iconColor: selectedGender == Gender.male ? Colors.black : null,
                  ),
                  border: selectedGender == Gender.male ? Border.all(color: Colors.black) : null,
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                  colors: selectedGender == Gender.female ? activeColor : deActiveColor,
                  cardwidget: RepeatIconTextCode(
                    iconData: FontAwesomeIcons.personDress,
                    label: 'Female',
                    iconColor: selectedGender == Gender.female ? Colors.black : null,
                  ),
                  border: selectedGender == Gender.female ? Border.all(color: Colors.black) : null,
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
                Center(child: Text('Height',style: kLabelStyle))
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
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  colors: deActiveColor,
                  cardwidget: Column(
                    children: [],
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