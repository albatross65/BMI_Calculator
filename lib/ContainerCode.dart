import 'package:flutter/material.dart';

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
