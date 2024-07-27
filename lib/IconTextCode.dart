import 'package:flutter/material.dart';
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
