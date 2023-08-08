import 'package:flutter/material.dart';

import '../../home/view/home_view.dart';

class DashboarView extends StatefulWidget {
  const DashboarView({super.key});

  @override
  State<DashboarView> createState() => _DashboarViewState();
}

class _DashboarViewState extends State<DashboarView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        children: [
          HomeView(),
          HomeView(),
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          onTap: (value) => 1,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')
          ],
        ),
      ),
    );
  }
}
