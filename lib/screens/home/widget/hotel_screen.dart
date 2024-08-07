import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/images.dart';

class HotelListScreen extends StatelessWidget {
  final Map<String, dynamic> hotels;
  const HotelListScreen({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 14),
      padding: const EdgeInsets.all(8.0),
      width: MediaQuery.of(context).size.width * 0.5,
      height: 310,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppStyle.primaryColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image:  DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('${AppImages.basePath}/${hotels['image']}'),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotels['place'],
              style: AppStyle.headLineStyle3.copyWith(
                color: AppStyle.logoColor,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              hotels['destination'],
              style: AppStyle.headLineStyle3.copyWith(
                color: AppStyle.logoColor,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '\u{20B9}${hotels['price']} / night',
              style: AppStyle.headLineStyle3.copyWith(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
