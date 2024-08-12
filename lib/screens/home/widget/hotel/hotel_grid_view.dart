import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/images.dart';
import 'package:ticket_app/screens/home/utils/hotel_list_json.dart';
import 'package:ticket_app/screens/home/widget/hotel/hotel_details.dart';

class HotelGridPreviewList extends StatelessWidget {
  const HotelGridPreviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: AppStyle.bgColor,
        title: Text(
          'All Hotels',
          style: AppStyle.textStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only(left: 8),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              childAspectRatio: 0.9,
            ),
            itemCount: hotelList.length,
            itemBuilder: (context, index) {
              final hotels = hotelList[index];
              return buildHotelPreview(
                hotels: hotels,
                context: context,
                index: index,
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildHotelPreview({
    required Map<String, dynamic> hotels,
    required BuildContext context,
    required int index,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HotelDetails(
              hotels: hotels,
            ),
          ),
        );
      },
      child: Container(
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
              aspectRatio: 1.2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage('${AppImages.basePath}/${hotels['image']}'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              hotels['place'],
              style: AppStyle.headLineStyle4.copyWith(
                color: AppStyle.headlineTextColorGold,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 5),
            Row(
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
                  '\u{20B9}${hotels['price']}/Night',
                  style: AppStyle.headLineStyle4.copyWith(
                    color: AppStyle.priceTextColorYellow,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
