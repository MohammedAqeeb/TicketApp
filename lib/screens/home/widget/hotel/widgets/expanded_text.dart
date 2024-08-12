import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';

class ExpandedText extends StatefulWidget {
  final String text;
  const ExpandedText({
    super.key,
    required this.text,
  });

  @override
  State<ExpandedText> createState() => _ExpandedTextState();
}

class _ExpandedTextState extends State<ExpandedText> {
  bool expandedText = false;
  @override
  Widget build(BuildContext context) {
    void isTextExpanded() {
      setState(() {
        expandedText = !expandedText;
      });
    }

    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Summary',
            style:
                AppStyle.headLineStyle2.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 10),
          Text(
            '\t\t ${widget.text}',
            maxLines: expandedText == false ? 3 : null,
            overflow: expandedText == false
                ? TextOverflow.ellipsis
                : TextOverflow.visible,
            style: AppStyle.textStyle,
          ),
          InkWell(
            onTap: () {
              isTextExpanded();
            },
            child: Text(
              expandedText == false ? 'more' : 'less',
              style: AppStyle.textStyle.copyWith(
                color: AppStyle.primaryColor,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
