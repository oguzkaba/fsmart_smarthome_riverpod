import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../../../dashboard/view/components/custom_bottom_nav_bar.dart';
import '../../provider/home_provider.dart';

class HomeComponentsMainView extends ConsumerWidget {
  final Widget bodyWidget;
  final String title;
  final String subTitle;
  const HomeComponentsMainView(
      {super.key,
      required this.bodyWidget,
      required this.title,
      required this.subTitle});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const List<GButton> items = [
      GButton(
        icon: Icons.dark_mode_outlined,
        text: 'Night Mode',
        iconColor: Colors.grey,
        textColor: Colors.black,
        iconActiveColor: Colors.black,
      ),
      GButton(
        icon: Icons.remove_circle_outline,
        text: 'Off',
        iconColor: Colors.grey,
        textColor: Colors.black,
        iconActiveColor: Colors.black,
      ),
      GButton(
        icon: Icons.bolt_rounded,
        text: 'Electric Safe',
        iconColor: Colors.grey,
        textColor: Colors.black,
        iconActiveColor: Colors.black,
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            Text(
              title,
              style: Theme.of(context).appBarTheme.titleTextStyle,
            ),
            Text(subTitle, style: Theme.of(context).textTheme.bodySmall),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.more_vert_rounded))
        ],
      ),
      //Drawer
      extendBody: true,
      body: bodyWidget,
      bottomNavigationBar: CustomBottomNavBar(
        items: items,
        onChange: (value) {
          ref.read(homeProvider.notifier).changeIndex(value);
        },
        selectedIndex: ref.watch(homeProvider),
      ),
    );
  }
}
