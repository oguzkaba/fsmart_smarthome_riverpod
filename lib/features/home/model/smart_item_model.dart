import 'package:flutter/material.dart';

class SmartItemModel {
  final String title;
  final String subTitle;
  final IconData icon;

  SmartItemModel(
      {required this.title, required this.subTitle, required this.icon});

  static List<SmartItemModel> smartItemList = [
    SmartItemModel(
      icon: Icons.security_rounded,
      title: 'Security system',
      subTitle: 'All Safe',
    ),
    SmartItemModel(
      icon: Icons.safety_check_rounded,
      title: 'Access control',
      subTitle: '4 people have access',
    ),
    SmartItemModel(
      icon: Icons.light,
      title: 'Lighting system',
      subTitle: '72%',
    ),
    SmartItemModel(
      icon: Icons.thermostat_auto_rounded,
      title: 'Climate control',
      subTitle: '24 ',
    ),
    SmartItemModel(
      icon: Icons.tv,
      title: 'Multimedia',
      subTitle: 'Smart TV, Audio system',
    ),
    SmartItemModel(
      icon: Icons.curtains_rounded,
      title: 'Curtains',
      subTitle: 'Closed',
    ),
    SmartItemModel(
      icon: Icons.kitchen,
      title: 'Appliances',
      subTitle: 'Off',
    ),
    SmartItemModel(
      icon: Icons.water_drop_rounded,
      title: 'Leakage',
      subTitle: 'Not found',
    ),
    SmartItemModel(
      icon: Icons.phonelink_ring_rounded,
      title: 'Management',
      subTitle: 'Online',
    ),
    SmartItemModel(
      icon: Icons.electrical_services_rounded,
      title: 'Saving electiricity',
      subTitle: '2 kWh',
    ),
  ];
}
