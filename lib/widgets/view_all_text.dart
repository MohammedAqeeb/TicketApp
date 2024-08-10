import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class VielAllTextWidgets extends StatelessWidget {
  final String firstText;
  final String secondText;
  final Function() onTap;
  const VielAllTextWidgets({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.onTap,
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
        InkWell(
          onTap: onTap,
          child: Text(
            secondText,
            style: AppStyle.textStyle.copyWith(
              color: AppStyle.primaryColor,
            ),
          ),
        )
      ],
    );
  }
}
