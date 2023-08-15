import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends ConsumerWidget {
  final List<GButton> items;
  final ValueChanged<int> onChange;
  final int? selectedIndex;

  const CustomBottomNavBar({
    super.key,
    required this.items,
    required this.onChange,
    this.selectedIndex,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      margin: const EdgeInsets.all(20),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(36)),
      child: GNav(
          mainAxisAlignment: MainAxisAlignment.center,
          selectedIndex: selectedIndex ?? 0,
          onTabChange: onChange,
          tabMargin: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
          backgroundColor: const Color(0xff393a3f),
          haptic: true,
          tabBorderRadius: 24,
          curve: Curves.easeIn,
          gap: 8,
          color: Colors.grey[800],
          iconSize: 22,
          tabBackgroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          tabs: items),
    );
  }
}
