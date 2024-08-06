import 'package:flutter/material.dart';

class SmallCircle extends StatelessWidget {
  final bool isRight;
  const SmallCircle({
    super.key,
    required this.isRight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: isRight == true
              ? const BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(10),
                )
              : const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                ),
        ),
      ),
    );
  }
}
