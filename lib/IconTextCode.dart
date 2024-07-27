import 'package:flutter/material.dart';

import 'constant.dart';

class RepeatIconTextCode extends StatelessWidget {
  const RepeatIconTextCode({
    Key? key,
    required this.iconData,
    required this.label,
    this.iconColor,
    this.textColor,
  }) : super(key: key);

  final IconData iconData;
  final String label;
  final Color? iconColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          color: iconColor ?? Color(0xff3B4371), // Use iconColor if provided
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
          style: kLabelStyle.copyWith(
            color: textColor ?? Color(0xff3B4371), // Use textColor if provided
          ),
        ),
      ],
    );
  }
}
