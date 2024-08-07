import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class TicketsTab extends StatelessWidget {
  const TicketsTab({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: AppStyle.tabColor,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextTabs(text: 'Airline Tickets', isLeft: true),
          TextTabs(text: 'Hotels', isLeft: false),
          // Container(
          //   width: size * 0.44,
          //   padding: const EdgeInsets.symmetric(vertical: 8),
          //   decoration: const BoxDecoration(
          //     borderRadius: BorderRadius.horizontal(left: Radius.circular(50)),
          //     color: Colors.white,
          //   ),
          //   child: Center(
          //     child: Text(
          //       'Airline Tickets',
          //       style: AppStyle.textStyle.copyWith(),
          //     ),
          //   ),
          // ),
          // Container(
          //   width: size * 0.44,
          //   padding: const EdgeInsets.symmetric(vertical: 8),
          //   decoration: const BoxDecoration(
          //     borderRadius: BorderRadius.horizontal(right: Radius.circular(50)),
          //     color: Colors.transparent,
          //   ),
          //   child: Center(
          //     child: Text(
          //       'Hotels',
          //       style: AppStyle.textStyle,
          //     ),
          //   ),
          // ),
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
