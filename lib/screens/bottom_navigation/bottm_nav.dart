import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:ticket_app/controller/bottom_nav_controller.dart';
import 'package:ticket_app/screens/home/home_screen.dart';
import 'package:ticket_app/screens/profile/screen.dart';
import 'package:ticket_app/screens/search/search_screen.dart';
import 'package:ticket_app/screens/tickets/widget/ticket_previewed_bottom.dart';

class BottomNavigation extends StatelessWidget {
  BottomNavigation({super.key});

  final BottomNavController controller = Get.put(BottomNavController());

  final List appScreens = [
    const HomeScreen(),
    const SearchScreen(),
    const TicketPreviewedBottomScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        body: appScreens[controller.selectedIndex.value],
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueGrey,
          onTap: controller.bottomOnTap,
          currentIndex: controller.selectedIndex.value,
          unselectedItemColor: const Color(0xFF526400),
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              label: 'Home',
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_home_filled,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              label: 'Search',
              activeIcon: Icon(
                FluentSystemIcons.ic_fluent_search_filled,
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              label: 'Tickets',
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
            ),
            BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
