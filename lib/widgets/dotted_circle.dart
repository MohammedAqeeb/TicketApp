import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class DottedCircle extends StatelessWidget {
  final bool? removeColor;
  const DottedCircle({
    super.key,
    this.removeColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2.5,
          color: removeColor == null
              ? Colors.white
              : AppStyle.flightColored,
        ),
      ),
    );
  }
}
