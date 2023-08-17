// control route List

import 'package:flutter/widgets.dart';
import '../../../features/home/view/components/access_control/access_control_view.dart';
import '../../../features/home/view/components/appliances/appliances_view.dart';
import '../../../features/home/view/components/climate/climate_view.dart';
import '../../../features/home/view/components/curtains/curtains_view.dart';
import '../../../features/home/view/components/leakage/leakage_view.dart';
import '../../../features/home/view/components/lighting/lighting_view.dart';
import '../../../features/home/view/components/management/management_view.dart';
import '../../../features/home/view/components/multimedia/multimedia_view.dart';
import '../../../features/home/view/components/saving_electricity/saving_electricity_view.dart';
import '../../../features/home/view/components/security_system/security_system_view.dart';

const List<Widget> bodyWidget = [
  SecuritySystemView(),
  AccessControlView(),
  LightingView(),
  ClimateView(),
  MultimediaView(),
  CurtainsView(),
  AppliancesView(),
  LeakageView(),
  ManagementView(),
  SavingElectricityView()
];
