import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/app/color_contants.dart';
import 'components/home_component_main.dart';
import 'package:kartal/kartal.dart';

import '../model/smart_item_model.dart';

final selectHouseProvider = StateProvider<int>((ref) => 0);

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<SmartItemModel> smartItemModel = SmartItemModel.smartItemList;

    return Scaffold(
      extendBody: true,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        primary: true,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Welcome, Oğuz',
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
              context.sized.emptySizedHeightBoxLow,
              _dropDownMenu(context, ref),
              context.sized.emptySizedHeightBoxLow,
              _gridView(smartItemModel, context)
            ],
          ),
        ),
      ),
    );
  }

  GridView _gridView(
      List<SmartItemModel> smartItemModel, BuildContext context) {
    return GridView.count(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 1.2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 2,
        children: smartItemModel
            .map((e) => InkWell(
                  splashFactory: NoSplash.splashFactory,
                  highlightColor: ColorConstants.transparent,
                  hoverColor: ColorConstants.transparent,
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeComponentsMainView(
                          bodyWidget: Container(),
                          title: e.title,
                          subTitle: e.subTitle,
                        ),
                      )),
                  // onTap: () => showModalBottomSheet<void>(
                  //   enableDrag: true,
                  //   context: context,
                  //   builder: (context) => const SizedBox(
                  //     height: 150,
                  //     child: Padding(
                  //       padding: EdgeInsets.symmetric(horizontal: 32.0),
                  //       child: Text('Deneme'),
                  //     ),
                  //   ),
                  // ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            e.icon,
                            size: 48,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          context.sized.emptySizedHeightBoxLow,
                          Text(e.title),
                          Text(e.subTitle,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  color: ColorConstants.grey, fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ))
            .toList());
  }
}

Card _dropDownMenu(BuildContext context, WidgetRef ref) {
  return Card(
    child: DropdownButtonHideUnderline(
      child: DropdownButton(
        isExpanded: true,
        itemHeight: 80,
        alignment: Alignment.center,
        borderRadius: BorderRadius.circular(16),
        icon: const Padding(
          padding: EdgeInsets.only(right: 16.0),
          child: Icon(Icons.keyboard_arrow_down),
        ),
        value: ref.watch(selectHouseProvider),
        items: List.generate(
            3,
            (index) => DropdownMenuItem(
                value: index,
                child: SizedBox(
                  width: context.general.mediaQuery.size.width - 84,
                  child: ListTile(
                    leading: const CircleAvatar(
                        child: Icon(Icons.holiday_village_rounded)),
                    title: Text('House ${index + 1}'),
                    subtitle: const Text(
                      '395 Amherst St, East Orange, NJ',
                      overflow: TextOverflow.ellipsis,
                      style:
                          TextStyle(color: ColorConstants.grey, fontSize: 12),
                    ),
                  ),
                ))),
        onChanged: (value) =>
            ref.read(selectHouseProvider.notifier).state = value ?? 0,
      ),
    ),
  );
}
