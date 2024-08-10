import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home/widget/ticket_headline_text.dart';
import 'package:ticket_app/screens/home/widget/ticket_label_text.dart';

class AppColumnTextLayout extends StatelessWidget {
  final String firstText;
  final String secondText;
  final bool? removeBgColor;
  final CrossAxisAlignment crossAxisAlignment;
  const AppColumnTextLayout({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.crossAxisAlignment,
    this.removeBgColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: crossAxisAlignment,
      children: [
        TicketHeadlineText(
          text: firstText,
          isColor: removeBgColor,
        ),
        const SizedBox(height: 4),
        TicketLabelText(
          labelText: secondText,
          isColor: removeBgColor,
        ),
      ],
    );
  }
}
