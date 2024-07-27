import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class RepeatIconTextCode extends StatelessWidget {
  const RepeatIconTextCode({
    Key? key,
    required this.iconData,
    required this.label,
  }) : super(key: key);

  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: Color(0xff3B4371),
          size: 80.0,
          shadows: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 2,
              offset: Offset(2, 3),
            )
          ],
        ),
        SizedBox(height: 15.0),
        Text(
          label,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            shadows: [
              Shadow(
                color: Colors.black38,
                blurRadius: 2,
                offset: Offset(3, 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  const RepeatContainerCode({
    Key? key,
    required this.colors,
    this.cardwidget,
  }) : super(key: key);

  final Color colors;
  final Widget? cardwidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colors,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 2),
          )
        ],
      ),
      child: cardwidget,
    );
  }
}