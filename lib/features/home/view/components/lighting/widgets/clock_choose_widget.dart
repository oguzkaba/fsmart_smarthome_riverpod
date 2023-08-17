import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../../../../core/constants/app/color_contants.dart';

class ClockChooseWidget extends StatelessWidget {
  final String clock;
  final ClockRange clockRange;

  const ClockChooseWidget({
    super.key,
    required this.clock,
    required this.clockRange,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding.normal,
      decoration: BoxDecoration(
          borderRadius: context.border.normalBorderRadius,
          color: ColorConstants.black),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            clock,
            style: context.general.textTheme.titleLarge,
          ),
          context.sized.emptySizedWidthBoxLow,
          Text(
            clockRange.name.toUpperCase(),
            style: context.general.textTheme.bodyMedium
                ?.copyWith(color: ColorConstants.grey),
          ),
          IconButton(
              padding: EdgeInsets.zero,
              onPressed: () {
                showTimePicker(
                    context: context,
                    initialTime: const TimeOfDay(hour: 6, minute: 00));
              },
              icon: const Icon(Icons.keyboard_arrow_down_rounded))
        ],
      ),
    );
  }
}

enum ClockRange {
  am,
  pm,
}
