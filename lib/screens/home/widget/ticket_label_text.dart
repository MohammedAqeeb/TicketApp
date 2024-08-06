import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class TicketLabelText extends StatelessWidget {
  final String labelText;
  final TextAlign isAligned;
  const TicketLabelText({
    required this.labelText,
    this.isAligned = TextAlign.start,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      labelText,
      textAlign: isAligned,
      style: AppStyle.headLineStyle4.copyWith(
        color: Colors.white,
      ),
    );
  }
}
