import 'package:flutter/material.dart';

class LinesLayoutBuilder extends StatelessWidget {
  final int randomNumber;
  final double width;
  const LinesLayoutBuilder({
    super.key,
    required this.randomNumber,
    this.width = 3,
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
              child: const DecoratedBox(
                decoration: BoxDecoration(color: Colors.white),
              ),
            ),
          ),
        );
      },
    );
  }
}
