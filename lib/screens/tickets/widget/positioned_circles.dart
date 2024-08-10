import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class PositionedCircles extends StatelessWidget {
  final bool? leftPosition;
 
  const PositionedCircles({
    super.key,
    this.leftPosition,

  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: leftPosition == true ? 30 : null,
      right: leftPosition == true ? null : 30,
      top: 255,
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 2),
        ),
        child: CircleAvatar(
          maxRadius: 4,
          backgroundColor: AppStyle.textColor,
        ),
      ),
    );
  }
}
