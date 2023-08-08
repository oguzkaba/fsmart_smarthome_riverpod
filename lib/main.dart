import 'package:flutter/material.dart';
import 'features/dashboard/view/dasboard_view.dart';

void main() {
  runApp(const MainApp());
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
