import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/search/widgets/tickets_tab.dart';
import 'package:ticket_app/widgets/icon_textfield.dart';
import 'package:ticket_app/widgets/view_all_text.dart';

import 'widgets/promotion_cards.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const SizedBox(height: 40),
          Text(
            'What are you\nlooking at',
            style: AppStyle.headLineStyle1.copyWith(
              fontSize: 35,
            ),
          ),
          const SizedBox(height: 12),
          const TicketsTab(
            firstTabText: 'Airline Tickets',
            secondTabText: 'Hotels',
          ),
          const SizedBox(height: 24),
          const IconTextfield(
              text: 'Departure', iconData: Icons.flight_takeoff_rounded),
          const SizedBox(height: 18),
          const IconTextfield(
              text: 'Arrival', iconData: Icons.flight_land_rounded),
          const SizedBox(height: 18),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: const Color(0xD91130CE),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text(
              'Find tickets',
              style: AppStyle.headLineStyle2.copyWith(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 16),
          VielAllTextWidgets(
            firstText: 'Upcoming Flights',
            secondText: 'view all',
            onTap: () {},
          ),
          const SizedBox(height: 16),
          const PromotionCards(),
        ],
      ),
    );
  }
}
