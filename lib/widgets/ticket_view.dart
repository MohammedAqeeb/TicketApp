import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/base/widgets/small_circle.dart';
import 'package:ticket_app/screens/home/widget/ticket_headline_text.dart';
import 'package:ticket_app/screens/home/widget/ticket_label_text.dart';
import 'package:ticket_app/widgets/dotted_circle.dart';
import 'package:ticket_app/widgets/lines_layout_builder.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticketDetails;
  final bool isWholeScreen;
  const TicketView({
    super.key,
    required this.ticketDetails,
    this.isWholeScreen = true,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 189,
      child: Container(
        margin: EdgeInsets.only(right: isWholeScreen == true ? 16 : 0),
        child: Column(
          children: [
            // Blue part of the ticket the upper layer
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
                color: AppStyle.ticketColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketHeadlineText(text: ticketDetails['from']['code']),
                      Expanded(child: Container()),
                      const DottedCircle(),
                      Expanded(
                        child: Stack(
                          children: [
                            const SizedBox(
                              height: 24,
                              child: LinesLayoutBuilder(randomNumber: 6),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.56,
                                child: const Icon(
                                  Icons.local_airport_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      const DottedCircle(),
                      Expanded(child: Container()),
                      TicketHeadlineText(text: ticketDetails['to']['code']),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TicketLabelText(
                            labelText: ticketDetails['from']['name']),
                      ),
                      Expanded(child: Container()),
                      TicketLabelText(
                        labelText: ticketDetails['flying_time'],
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketLabelText(
                          labelText: ticketDetails['to']['name'],
                          isAligned: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Middle layer with small circles and dotted lines
            Container(
              color: AppStyle.ticketOrange,
              child: const Row(
                children: [
                  SmallCircle(
                    isRight: true,
                  ),
                  Expanded(
                    child: LinesLayoutBuilder(randomNumber: 16, width: 6),
                  ),
                  SmallCircle(
                    isRight: false,
                  ),
                ],
              ),
            ),

            // red part of the ticket the lower layer
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(21),
                  bottomRight: Radius.circular(21),
                ),
                color: AppStyle.ticketOrange,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TicketHeadlineText(text: ticketDetails['date']),
                          const SizedBox(height: 4),
                          const TicketLabelText(
                            labelText: 'Date',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TicketHeadlineText(
                              text: ticketDetails['departure_time']),
                          const SizedBox(height: 4),
                          const TicketLabelText(
                            labelText: 'Departure Time',
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TicketHeadlineText(
                              text: ticketDetails['number'].toString()),
                          const SizedBox(height: 4),
                          const TicketLabelText(
                            labelText: 'Number',
                            isAligned: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),

                  // Row(
                  //   children: [
                  //     TicketHeadlineText(text: ticketDetails['date']),
                  //     Expanded(child: Container()),
                  //     TicketHeadlineText(text: ticketDetails['departure_time']),
                  //     Expanded(child: Container()),
                  //     TicketHeadlineText(
                  //         text: ticketDetails['number'].toString()),
                  //   ],
                  // ),
                  // const SizedBox(height: 4),
                  // Row(
                  //   children: [
                  //     const SizedBox(
                  //       width: 100,
                  //       child: TicketLabelText(
                  //         labelText: 'Date',
                  //       ),
                  //     ),
                  //     Expanded(child: Container()),
                  //     const TicketLabelText(
                  //       labelText: 'Departure Time',
                  //     ),
                  //     Expanded(child: Container()),
                  //     const SizedBox(
                  //       width: 100,
                  //       child: TicketLabelText(
                  //         labelText: 'Number',
                  //         isAligned: TextAlign.end,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
