import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'ContainerCode.dart';
import 'IconTextCode.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}
class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0XffF3904F),
                  cardwidget: RepeatIconTextCode(
                    iconData: FontAwesomeIcons.person,
                    label: 'Male',
                  ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0XffF3904F),
                  cardwidget: RepeatIconTextCode(
                    iconData:  FontAwesomeIcons.personDress,
                    label: 'Female',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: RepeatContainerCode(
            colors: Color(0XffF3904F),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0XffF3904F),
                  cardwidget: Column(
                    children: [],
                  ),
                ),
              ),
              Expanded(
                child: RepeatContainerCode(
                  colors: Color(0XffF3904F),
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
