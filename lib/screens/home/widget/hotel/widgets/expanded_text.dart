import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/controller/text_expansion_controller.dart';

class ExpandedText extends StatelessWidget {
  final String text;
  ExpandedText({
    super.key,
    required this.text,
  });

  final TextExpansionController controller = Get.put(TextExpansionController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        return Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Summary',
                style: AppStyle.headLineStyle2
                    .copyWith(fontWeight: FontWeight.w700),
              ),
              const SizedBox(height: 10),
              Text(
                '\t\t $text',
                maxLines: controller.isExpanded.value == false ? 3 : null,
                overflow: controller.isExpanded.value == false
                    ? TextOverflow.ellipsis
                    : TextOverflow.visible,
                style: AppStyle.textStyle,
              ),
              InkWell(
                onTap: () {
                  controller.onTapTextExpanded();
                },
                child: Text(
                  controller.isExpanded.value == false ? 'more' : 'less',
                  style: AppStyle.textStyle.copyWith(
                    color: AppStyle.primaryColor,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
