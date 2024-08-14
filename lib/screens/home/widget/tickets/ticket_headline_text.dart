import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class TicketHeadlineText extends StatelessWidget {
  final String text;
  final bool? isColor;
  const TicketHeadlineText({
    super.key,
    required this.text,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.headLineStyle2.copyWith(
        color: isColor == null ? Colors.white : Colors.black,
      ),
    );
  }
}
