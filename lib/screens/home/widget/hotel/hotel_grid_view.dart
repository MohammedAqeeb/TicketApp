import 'package:flutter/material.dart';

import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/images.dart';

class HotelGridView extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelGridView({super.key, required this.hotels});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppStyle.hotelCardBgColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 0.7,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('${AppImages.basePath}/${hotels['image']}'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotels['place'],
              style: AppStyle.headLineStyle4.copyWith(
                color: AppStyle.headlineTextColorGold,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  hotels['destination'],
                  style: AppStyle.headLineStyle4.copyWith(
                    color: AppStyle.subheadlineTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '\u{20B9}${hotels['price']}',
                  style: AppStyle.headLineStyle4.copyWith(
                    color: AppStyle.priceTextColorYellow,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
