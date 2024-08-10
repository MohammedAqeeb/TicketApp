import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/base/widgets/small_circle.dart';
import 'package:ticket_app/screens/home/widget/ticket_headline_text.dart';
import 'package:ticket_app/screens/home/widget/ticket_label_text.dart';
import 'package:ticket_app/widgets/app_column_text_layout.dart';
import 'package:ticket_app/widgets/dotted_circle.dart';
import 'package:ticket_app/widgets/lines_layout_builder.dart';

class TicketPreviewListScreen extends StatelessWidget {
  final Map<String, dynamic> ticketDetails;
  final bool isWholeScreen;
  final bool? removeBgColor;
  final double containerHeight;
  const TicketPreviewListScreen({
    super.key,
    required this.ticketDetails,
    this.isWholeScreen = true,
    this.removeBgColor,
    required this.containerHeight,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: containerHeight,
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
                color: removeBgColor == null
                    ? AppStyle.ticketColor
                    : AppStyle.ticketBgColor,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      TicketHeadlineText(
                        text: ticketDetails['from']['code'],
                        isColor: removeBgColor,
                      ),
                      Expanded(child: Container()),
                      DottedCircle(
                        removeColor: removeBgColor,
                      ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 24,
                              child: LinesLayoutBuilder(
                                randomNumber: 6,
                                isColor: removeBgColor,
                              ),
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.56,
                                child: Icon(
                                  Icons.local_airport_rounded,
                                  color: removeBgColor == null
                                      ? Colors.white
                                      : AppStyle.flightColored,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      DottedCircle(removeColor: removeBgColor),
                      Expanded(child: Container()),
                      TicketHeadlineText(
                          text: ticketDetails['to']['code'],
                          isColor: removeBgColor),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        child: TicketLabelText(
                          labelText: ticketDetails['from']['name'],
                          isColor: removeBgColor,
                        ),
                      ),
                      Expanded(child: Container()),
                      TicketLabelText(
                        labelText: ticketDetails['flying_time'],
                        isColor: removeBgColor,
                      ),
                      Expanded(child: Container()),
                      SizedBox(
                        width: 100,
                        child: TicketLabelText(
                          labelText: ticketDetails['to']['name'],
                          isAligned: TextAlign.end,
                          isColor: removeBgColor,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Middle layer with small circles and dotted lines
            Container(
              color: removeBgColor == null
                  ? AppStyle.ticketOrange
                  : AppStyle.ticketBgColor,
              child: Row(
                children: [
                  SmallCircle(
                    isRight: true,
                    isColor: removeBgColor,
                  ),
                  Expanded(
                    child: LinesLayoutBuilder(
                      randomNumber: 16,
                      width: 6,
                      isColor: removeBgColor,
                    ),
                  ),
                  SmallCircle(
                    isRight: false,
                    isColor: removeBgColor,
                  ),
                ],
              ),
            ),

            // red part of the ticket the lower layer
            Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: removeBgColor == null
                      ? const Radius.circular(21)
                      : const Radius.circular(0),
                  bottomRight: removeBgColor == null
                      ? const Radius.circular(21)
                      : const Radius.circular(0),
                ),
                color: removeBgColor == null
                    ? AppStyle.ticketOrange
                    : AppStyle.ticketBgColor,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnTextLayout(
                        firstText: ticketDetails['date'],
                        secondText: 'DATE',
                        crossAxisAlignment: CrossAxisAlignment.start,
                        removeBgColor: removeBgColor,
                      ),
                      AppColumnTextLayout(
                        firstText: ticketDetails['departure_time'],
                        secondText: 'Departure Time',
                        crossAxisAlignment: CrossAxisAlignment.center,
                        removeBgColor: removeBgColor,
                      ),
                      AppColumnTextLayout(
                        firstText: ticketDetails['number'].toString(),
                        secondText: 'Number',
                        crossAxisAlignment: CrossAxisAlignment.end,
                        removeBgColor: removeBgColor,
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
