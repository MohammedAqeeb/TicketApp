import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/images.dart';
import 'package:ticket_app/screens/home/widget/tickets/ticket_headline_text.dart';
import 'package:ticket_app/widgets/app_column_text_layout.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildLogo(),
                const SizedBox(width: 10),
                buildTextHeadLines(),
                Expanded(child: Container()),
                buildEditText(),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Divider(color: Colors.grey.shade300, thickness: 0.8),
          const SizedBox(height: 10),
          Stack(
            children: [
              buildBanner(),
              buildCircleBanner(),
            ],
          ),
          const SizedBox(height: 30),
          const TicketHeadlineText(
            text: 'Accumulated miles',
            isColor: true,
          ),
          const SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              color: AppStyle.bgColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Text(
                  '54681',
                  style: AppStyle.headLineStyle1,
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Miles Accuted',
                      style: AppStyle.headLineStyle2
                          .copyWith(color: Colors.grey.shade500),
                    ),
                    Text(
                      '12 July 2024',
                      style: AppStyle.headLineStyle2
                          .copyWith(color: Colors.grey.shade500),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Divider(color: Colors.grey.shade400),
                const SizedBox(height: 6),
                buildRowTextWidget(
                  firstRowText: '2305',
                  lastRowText: 'SpiceJet',
                ),
                const SizedBox(height: 30),
                buildRowTextWidget(
                  firstRowText: '465',
                  lastRowText: 'Jet Airways',
                ),
                const SizedBox(height: 30),
                buildRowTextWidget(
                  firstRowText: '6582',
                  lastRowText: 'India Air',
                ),
                const SizedBox(height: 50),
                Text(
                  'How to get more miles',
                  style: AppStyle.headLineStyle2.copyWith(
                    color: AppStyle.primaryColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRowTextWidget({
    required String firstRowText,
    required String lastRowText,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppColumnTextLayout(
            firstText: firstRowText,
            secondText: 'Miles',
            crossAxisAlignment: CrossAxisAlignment.start,
            removeBgColor: false,
          ),
          AppColumnTextLayout(
            firstText: lastRowText,
            secondText: 'Recieved From',
            crossAxisAlignment: CrossAxisAlignment.end,
            removeBgColor: false,
          ),
        ],
      ),
    );
  }

  Positioned buildCircleBanner() {
    return Positioned(
      right: -30,
      top: -35,
      child: Container(
        padding: const EdgeInsets.all(26),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            width: 18,
            color: const Color(0xFF264CD2),
          ),
        ),
      ),
    );
  }

  Container buildBanner() {
    return Container(
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppStyle.primaryColor,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppStyle.offWhiteColor,
              ),
              child: Icon(
                FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                color: AppStyle.profileColor,
              ),
            ),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'You\'v have got a new rewar',
                  style: AppStyle.headLineStyle2.copyWith(
                    color: AppStyle.offWhiteColor,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  'You had 21 flights taken this year',
                  style: AppStyle.textStyle.copyWith(
                    color: AppStyle.offWhiteColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Text buildEditText() {
    return Text(
      'Edit',
      style: AppStyle.textStyle.copyWith(fontWeight: FontWeight.w300),
    );
  }

  Column buildTextHeadLines() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Book Tickets',
          style: AppStyle.headLineStyle3,
        ),
        const SizedBox(height: 3),
        Text(
          'Bengaluru',
          style: AppStyle.textStyle.copyWith(
            fontSize: 14,
            color: Colors.grey.shade400,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 6),
        Container(
          height: 30,
          padding: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: const Color(0xFFFEF4f3),
          ),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyle.profileColor,
                ),
                child: Icon(
                  FluentSystemIcons.ic_fluent_shield_filled,
                  color: AppStyle.offWhiteColor,
                  size: 18,
                ),
              ),
              const SizedBox(width: 4),
              Text(
                'Premium Status',
                style: AppStyle.textStyle.copyWith(
                    color: AppStyle.profileColor, fontWeight: FontWeight.w500),
              )
            ],
          ),
        )
      ],
    );
  }

  Container buildLogo() {
    return Container(
      height: 84,
      width: 84,
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage(AppImages.logo),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
