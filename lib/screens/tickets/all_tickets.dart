import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/home/utils/ticket_list_json.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

class AllTicketsScreen extends StatelessWidget {
  const AllTicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'All Tickets',
          style: AppStyle.textStyle.copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 16),
        child: Column(
          children: ticketList
              .map(
                (tickets) => Container(
                  alignment: Alignment.center,
                  child: TicketView(
                    isWholeScreen: false,
                    ticketDetails: tickets,
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
