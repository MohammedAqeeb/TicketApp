import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class TicketsTab extends StatelessWidget {
  final String firstTabText;
  final String secondTabText;
  const TicketsTab({
    super.key,
    required this.firstTabText,
    required this.secondTabText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyle.tabColor,
      ),
      child:  Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextTabs(text: firstTabText, isLeft: true),
          TextTabs(text: secondTabText, isLeft: false),
        ],
      ),
    );
  }
}

class TextTabs extends StatelessWidget {
  final String text;
  final bool isLeft;
  const TextTabs({
    super.key,
    required this.text,
    this.isLeft = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Container(
      width: size * 0.44,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: isLeft == true
          ? const BoxDecoration(
              borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
              color: Colors.white,
            )
          : const BoxDecoration(
              borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
              color: Colors.transparent,
            ),
      child: Center(
        child: Text(
          text,
          style: AppStyle.textStyle,
        ),
      ),
    );
  }
}
