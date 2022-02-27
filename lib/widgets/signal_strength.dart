import 'package:flutter/material.dart';

final List<double> heights = [9, 13, 17, 21];

class SingalStrength extends StatelessWidget {
  const SingalStrength({
    required this.strength,
    Key? key,
  }) : super(key: key);
  final int strength;
  @override
  Widget build(BuildContext context) {
    Color bgColor;
    if (strength >= 3) {
      bgColor = Color(0xff63E287);
    } else if (strength == 2) {
      bgColor = Color(0xffFF8300);
    } else {
      bgColor = Colors.red;
    }
    return Container(
      child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
        Container(
          width: 4.2,
          height: heights[0],
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        SizedBox(width: 1.5),
        Container(
          width: 4.2,
          height: heights[1],
          decoration: BoxDecoration(
            color: strength >= 2 ? bgColor : Color(0xffe5e5e5),
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        SizedBox(width: 1.5),
        Container(
          width: 4.2,
          height: heights[2],
          decoration: BoxDecoration(
            color: strength >= 3 ? bgColor : Color(0xffe5e5e5),
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        ),
        SizedBox(width: 1.5),
        Container(
          width: 4.2,
          height: heights[3],
          decoration: BoxDecoration(
            color: strength >= 4 ? bgColor : Color(0xffe5e5e5),
            border: Border.all(
              color: Colors.transparent,
            ),
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
        )
      ]),
    );
  }
}
