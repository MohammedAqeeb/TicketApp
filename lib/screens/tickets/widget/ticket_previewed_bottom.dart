import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/images.dart';
import 'package:ticket_app/screens/home/utils/ticket_list_json.dart';
import 'package:ticket_app/screens/home/widget/ticket_headline_text.dart';
import 'package:ticket_app/screens/home/widget/ticket_label_text.dart';
import 'package:ticket_app/screens/search/widgets/tickets_tab.dart';
import 'package:ticket_app/screens/tickets/widget/positioned_circles.dart';
import 'package:ticket_app/widgets/app_column_text_layout.dart';
import 'package:ticket_app/widgets/lines_layout_builder.dart';
import 'package:ticket_app/widgets/ticket_view.dart';

class TicketPreviewedBottomScreen extends StatelessWidget {
  const TicketPreviewedBottomScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            children: [
              const SizedBox(height: 40),
              Text(
                'Tickets',
                style: AppStyle.headLineStyle1,
              ),
              const SizedBox(height: 24),
              const TicketsTab(
                firstTabText: 'Upcoming',
                secondTabText: 'Previous',
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.only(left: 16),
                child: TicketPreviewListScreen(
                  ticketDetails: ticketList[0],
                  removeBgColor: true,
                  containerHeight: 170,
                ),
              ),
              Container(
                color: AppStyle.ticketBgColor,
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          firstText: 'Aqeeb',
                          secondText: 'Passenger',
                          crossAxisAlignment: CrossAxisAlignment.start,
                          removeBgColor: true,
                        ),
                        AppColumnTextLayout(
                          firstText: 'K7809237',
                          secondText: 'Passport Number',
                          crossAxisAlignment: CrossAxisAlignment.end,
                          removeBgColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const LinesLayoutBuilder(
                      randomNumber: 16,
                      width: 6,
                      isColor: true,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppColumnTextLayout(
                          firstText: '03',
                          secondText: 'Gate',
                          crossAxisAlignment: CrossAxisAlignment.start,
                          removeBgColor: true,
                        ),
                        AppColumnTextLayout(
                          firstText: '7:40 AM',
                          secondText: 'Boarding till',
                          crossAxisAlignment: CrossAxisAlignment.center,
                          removeBgColor: true,
                        ),
                        AppColumnTextLayout(
                          firstText: '09A',
                          secondText: 'Seat',
                          crossAxisAlignment: CrossAxisAlignment.end,
                          removeBgColor: true,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const LinesLayoutBuilder(
                      randomNumber: 16,
                      width: 6,
                      isColor: true,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  AppImages.cardPng,
                                  scale: 11,
                                ),
                                const TicketHeadlineText(
                                  text: '**** 9990',
                                  isColor: true,
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            const TicketLabelText(
                              labelText: 'Payment Method',
                              isColor: true,
                            ),
                          ],
                        ),
                        const AppColumnTextLayout(
                          firstText: '\u{20B9}12,000',
                          secondText: 'Price',
                          crossAxisAlignment: CrossAxisAlignment.center,
                          removeBgColor: true,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const LinesLayoutBuilder(
                randomNumber: 16,
                width: 6,
                isColor: true,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: AppStyle.ticketBgColor,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(21),
                    bottomRight: Radius.circular(21),
                  ),
                ),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: BarcodeWidget(
                      height: 70,
                      drawText: false,
                      data: 'data',
                      barcode: Barcode.code128(),
                      width: double.infinity,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const PositionedCircles(leftPosition: true),
          const PositionedCircles(leftPosition: null),
        ],
      ),
    );
  }
}
