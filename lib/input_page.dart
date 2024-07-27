import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'ContainerCode.dart';
import 'IconTextCode.dart';

const activeColor = Color(0xffD3783E);
const deActiveColor = Color(0xffF3904F);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectGender; // Initialize with a default value

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectGender = Gender.male; // Update state to male
                    });
                  },
                  child: RepeatContainerCode(
                    colors: selectGender == Gender.male ? activeColor : deActiveColor,
                    cardwidget: RepeatIconTextCode(
                      iconData: FontAwesomeIcons.person,
                      label: 'Male',
                      iconColor: selectGender == Gender.male ? Colors.black : null,
                    ),
                    border: selectGender == Gender.male ? Border.all(color: Colors.black) : null,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectGender = Gender.female; // Update state to female
                    });
                  },
                  child: RepeatContainerCode(
                    colors: selectGender == Gender.female ? activeColor : deActiveColor,
                    cardwidget: RepeatIconTextCode(
                      iconData: FontAwesomeIcons.personDress,
                      label: 'Female',
                      iconColor: selectGender == Gender.female ? Colors.black : null,
                    ),
                    border: selectGender == Gender.female ? Border.all(color: Colors.black) : null,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: RepeatContainerCode(
            colors: deActiveColor,
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
