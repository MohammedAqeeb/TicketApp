import 'package:flutter/material.dart';

class LinesLayoutBuilder extends StatelessWidget {
  final int randomNumber;
  final double width;
  final bool? isColor;
  const LinesLayoutBuilder({
    super.key,
    required this.randomNumber,
    this.width = 3,
    this.isColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Flex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
          children: List.generate(
            (constraints.constrainWidth() / randomNumber).floor(),
            (index) => SizedBox(
              width: width,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isColor == null ? Colors.white : Colors.grey.shade300,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
