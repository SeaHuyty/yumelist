import 'package:flutter/material.dart';

class DiaryTimelineWidget extends StatelessWidget {
  final Widget child;
  final Color circleColor;
  final int dayNumber;

  const DiaryTimelineWidget({
    super.key,
    required this.child,
    required this.dayNumber,
    this.circleColor = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 40,
          child: Container(
            margin: EdgeInsets.only(top: 8, left: 10),
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: circleColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Center(
              child: Text(
                '$dayNumber',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
        Expanded(child: child),
      ],
    );
  }
}
