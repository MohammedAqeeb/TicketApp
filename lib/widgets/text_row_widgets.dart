import 'package:flutter/material.dart';
import 'package:ticket_app/res/style/app_style.dart';

class TextRowWidgets extends StatelessWidget {
  final String firstText;
  final String secondText;
  const TextRowWidgets({
    super.key,
    required this.firstText,
    required this.secondText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstText,
          style: AppStyle.headLineStyle3,
        ),
        Text(
          secondText,
          style: AppStyle.textStyle.copyWith(
            color: AppStyle.primaryColor,
          ),
        )
      ],
    );
  }
}
