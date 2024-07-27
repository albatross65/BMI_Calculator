import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ContainerCode.dart';
import 'IconTextCode.dart';

const activeColor = Color(0xffD3783E);
const deActiveColor = Color(0xffF3904F);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColor;
  Color femaleColor = deActiveColor;

  void updateColor(int gender) {
    if (gender == 1) {
      maleColor = activeColor;
      femaleColor = deActiveColor;
    } else if (gender == 2) {
      femaleColor = activeColor;
      maleColor = deActiveColor;
    }
  }

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
                      updateColor(1);
                    });
                  },
                  child: RepeatContainerCode(
                    colors: maleColor, // Use the constant
                    cardwidget: RepeatIconTextCode(
                      iconData: FontAwesomeIcons.person,
                      label: 'Male',
                      iconColor: maleColor == activeColor ? Colors.black : null,
                    ),
                    border: maleColor == activeColor ? Border.all(
                        color: Colors.black) : null,
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      updateColor(2);
                    });
                  },
                  child: RepeatContainerCode(
                    colors: femaleColor, // Use the constant
                    cardwidget: RepeatIconTextCode(
                      iconData: FontAwesomeIcons.personDress,
                      label: 'Female',
                      iconColor: femaleColor == activeColor
                          ? Colors.black
                          : null,
                    ),
                    border: femaleColor == activeColor ? Border.all(
                        color: Colors.black) : null,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: RepeatContainerCode(
            colors: deActiveColor, // Use the constant
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: deActiveColor, // Use the constant
                  cardwidget: Column(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  colors: deActiveColor, // Use the constant
                  cardwidget: Column(
                    children: [],
                  ), // Replace this with your desired widget
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
