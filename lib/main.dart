import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fsmart_smarthome_riverpod/core/constants/app/color_contants.dart';
import 'features/dashboard/view/dasboard_view.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const DashboarView(),
      themeMode: ThemeMode.dark,
      theme: ThemeData.dark(useMaterial3: true),
    );
  }
}
