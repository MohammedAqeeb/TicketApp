import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/screens/base/widgets/small_circle.dart';
import 'package:ticket_app/screens/home/widget/ticket_headline_text.dart';
import 'package:ticket_app/screens/home/widget/ticket_label_text.dart';
import 'package:ticket_app/widgets/dotted_circle.dart';
import 'package:ticket_app/widgets/lines_layout_builder.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      height: 189,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
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
                      const TicketHeadlineText(text: 'IND'),
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
                      const TicketHeadlineText(text: 'NYC'),
                    ],
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TicketLabelText(labelText: 'India'),
                      ),
                      Expanded(child: Container()),
                      const TicketLabelText(labelText: '5H 30M'),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TicketLabelText(
                          labelText: 'New-York',
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
                    children: [
                      const TicketHeadlineText(text: '5 Jan'),
                      Expanded(child: Container()),
                      const TicketHeadlineText(text: '12:20 AM'),
                      Expanded(child: Container()),
                      const TicketHeadlineText(text: '00201'),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      const SizedBox(
                        width: 100,
                        child: TicketLabelText(
                          labelText: 'Date',
                        ),
                      ),
                      Expanded(child: Container()),
                      const TicketLabelText(
                        labelText: 'Departure Time',
                      ),
                      Expanded(child: Container()),
                      const SizedBox(
                        width: 100,
                        child: TicketLabelText(
                          labelText: 'Number',
                          isAligned: TextAlign.end,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
