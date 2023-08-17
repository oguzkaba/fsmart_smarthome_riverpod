import 'package:flutter/material.dart';
import '../../dashboard/view/dasboard_view.dart';
import 'package:kartal/kartal.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    _routeHome().then((value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboarView(),
        ),
        (route) => false));
    super.initState();
  }

  Future<dynamic> _routeHome() =>
      Future.delayed(context.duration.durationNormal);

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('SplashView')),
    );
  }
}
