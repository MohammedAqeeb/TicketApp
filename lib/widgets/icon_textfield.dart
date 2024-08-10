import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class IconTextfield extends StatelessWidget {
  final String text;
  final IconData iconData;
  const IconTextfield({
    super.key,
    required this.text,
    required this.iconData,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            color: AppStyle.flightIconColor,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: AppStyle.textStyle,
          ),
        ],
      ),
    );
  }
}
