import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/home/utils/hotel_list_json.dart';
import 'package:ticket_app/screens/home/widget/hotel/hotel_grid_view.dart';

class HotelPreviewList extends StatelessWidget {
  const HotelPreviewList({super.key});

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
      body: Padding(
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
            return HotelGridView(hotels: hotels);
          },
        ),
      ),
    );
  }
}
