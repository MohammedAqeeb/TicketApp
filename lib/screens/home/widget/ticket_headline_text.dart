import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class TicketHeadlineText extends StatelessWidget {
  final String text;
  const TicketHeadlineText({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyle.headLineStyle2.copyWith(
        color: Colors.white,
      ),
    );
  }
}
