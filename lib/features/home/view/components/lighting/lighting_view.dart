import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';

import '../../../../../core/constants/app/color_contants.dart';
import 'widgets/clock_choose_widget.dart';

class LightingView extends ConsumerWidget {
  const LightingView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Card(
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
              borderRadius: context.border.normalBorderRadius),
          child: Padding(
            padding: context.padding.normal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Schedule',
                      style: context.general.textTheme.bodyLarge,
                    ),
                    IconButton(
                        onPressed: () {}, icon: const Icon(Icons.close_rounded))
                  ],
                ),
                context.sized.emptySizedHeightBoxLow,
                Row(
                  children: [
                    Text(
                      'From',
                      style: context.general.textTheme.bodyMedium
                          ?.copyWith(color: ColorConstants.grey),
                    ),
                    context.sized.emptySizedWidthBoxLow,
                    const ClockChooseWidget(
                        clock: '6:00', clockRange: ClockRange.pm),
                    const Spacer(),
                    Text(
                      'To',
                      style: context.general.textTheme.bodyMedium
                          ?.copyWith(color: ColorConstants.grey),
                    ),
                    context.sized.emptySizedWidthBoxLow,
                    const ClockChooseWidget(
                        clock: '10:00', clockRange: ClockRange.am),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
