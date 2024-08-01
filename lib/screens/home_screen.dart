import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/res/images.dart';
import 'package:ticket_app/res/style/app_style.dart';
import 'package:ticket_app/widgets/text_row_widgets.dart';

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
                const TextRowWidgets(
                  firstText: 'Upcoming Flights',
                  secondText: 'View all',
                ),
                const SizedBox(height: 40),
                const TextRowWidgets(
                  firstText: 'Upcoming Flights',
                  secondText: 'View all',
                ),const SizedBox(height: 40),
                const TextRowWidgets(
                  firstText: 'Upcoming Flights',
                  secondText: 'View all',
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
