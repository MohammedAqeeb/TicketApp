import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/images.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/utils/hotel_list_json.dart';
import 'package:ticket_app/constants/utils/ticket_list_json.dart';
import 'package:ticket_app/screens/tickets/screen.dart';
import 'package:ticket_app/widgets/view_all_text.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

import 'widget/tickets/all_tickets.dart';
import 'widget/hotel/hotel_details.dart';
import 'widget/hotel/hotel_grid_view.dart';
import 'widget/hotel/hotel_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        children: [
          const SizedBox(height: 40),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning',
                          style: AppStyle.headLineStyle2,
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'Book Ticket',
                          style: AppStyle.headLineStyle1,
                        ),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(AppImages.logo),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppStyle.offWhiteColor,
                  ),
                  child: Row(
                    children: [
                      Icon(
                        FluentSystemIcons.ic_fluent_search_regular,
                        color: AppStyle.logoColor,
                      ),
                      const Text('Search'),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                VielAllTextWidgets(
                  firstText: 'Upcoming Flights',
                  secondText: 'View all',
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AllTicketsScreen(),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: ticketList
                        .take(2)
                        .map((ticketDetails) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => TicketViewScreen(
                                      tickets: ticketDetails,
                                    ),
                                  ),
                                );
                              },
                              child: TicketPreviewListScreen(
                                ticketDetails: ticketDetails,
                                containerHeight: 189,
                              ),
                            ))
                        .toList(),
                  ),
                ),
                const SizedBox(height: 10),
                VielAllTextWidgets(
                  firstText: 'Hotel',
                  secondText: 'View all',
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HotelGridPreviewList(),
                      ),
                    ),
                  },
                ),
                const SizedBox(height: 16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: hotelList
                        .take(3)
                        .map(
                          (hotels) => GestureDetector(
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
                            child: HotelListScreen(
                              hotels: hotels,
                            ),
                          ),
                        )
                        .toList(),
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
