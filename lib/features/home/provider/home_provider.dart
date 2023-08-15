import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeProvider = StateNotifierProvider<HomeProvider, int>((ref) {
  return HomeProvider();
});

class HomeProvider extends StateNotifier<int> {
  HomeProvider() : super(1);

  void changeIndex(int index) => state = index;
}
