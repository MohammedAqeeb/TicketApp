import 'package:flutter/material.dart';
import 'package:ticket_app/constants/app_style.dart';
import 'package:ticket_app/constants/images.dart';

import 'widgets/expanded_text.dart';

class HotelDetails extends StatelessWidget {
  final Map<String, dynamic> hotels;

  const HotelDetails({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                margin: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyle.textColor.withOpacity(0.7),
                ),
                child: const Icon(Icons.arrow_back_sharp),
              ),
            ),
            expandedHeight: 300,
            backgroundColor: AppStyle.bgColor,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      '${AppImages.basePath}/${hotels['image']}',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      color: AppStyle.textColor.withOpacity(0.7),
                      child: Text(
                        hotels['place'],
                        style: AppStyle.headLineStyle2.copyWith(
                            color: AppStyle.offWhiteColor, fontSize: 20),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(height: 20),
                ExpandedText(text: hotels['details']),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'More Images',
                    style: AppStyle.headLineStyle2
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, imageIndex) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Image.asset(
                          'assets/images/${hotels['moreImages'][imageIndex]}',
                        ),
                      );
                    },
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
