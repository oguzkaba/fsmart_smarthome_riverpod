import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../home/view/home_view.dart';
import '../../profile/view/profile_view.dart';
import '../../statistics/view/statistics_view.dart';
import '../provider/dashboard_provider.dart';
import 'components/custom_bottom_nav_bar.dart';

class DashboarView extends ConsumerWidget {
  const DashboarView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PageController pageController = PageController();
    const List<GButton> items = [
      GButton(
        icon: Icons.home,
        text: 'Home',
        iconColor: Colors.grey,
        textColor: Colors.black,
        iconActiveColor: Colors.black,
      ),
      GButton(
        icon: Icons.pie_chart,
        text: 'Statistics',
        iconColor: Colors.grey,
        textColor: Colors.black,
        iconActiveColor: Colors.black,
      ),
      GButton(
        icon: Icons.person,
        text: 'Profile',
        iconColor: Colors.grey,
        textColor: Colors.black,
        iconActiveColor: Colors.black,
      ),
    ];

    return Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.cover,
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
        //Drawer
        drawer: const Drawer(),
        extendBody: true,
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: const [
            HomeView(),
            StatisticsView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(
            items: items,
            onChange: (value) {
              ref.read(dashboardProvider.notifier).changeIndex(value);
              pageController.jumpToPage(value);
            },
            selectedIndex: ref.watch(dashboardProvider)));
  }
}
