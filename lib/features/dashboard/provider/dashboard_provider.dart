import 'package:flutter_riverpod/flutter_riverpod.dart';

final dashboardProvider = StateNotifierProvider<DashboardProvider, int>((ref) {
  return DashboardProvider();
});

class DashboardProvider extends StateNotifier<int> {
  DashboardProvider() : super(0);

  void changeIndex(int index) => state = index;
}
