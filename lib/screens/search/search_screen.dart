import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/search/widgets/tickets_tab.dart';

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
          const TicketsTab(),
        ],
      ),
    );
  }
}
