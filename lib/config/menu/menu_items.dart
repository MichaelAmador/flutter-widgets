import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems(
      {required this.title,
      required this.subTitle,
      required this.link,
      required this.icon});
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Buttons',
      subTitle: 'Several buttons on Flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Cards',
      subTitle: 'An stlized container',
      link: '/cards',
      icon: Icons.credit_card_outlined),
  MenuItems(
      title: 'ProgressIndicators',
      subTitle: 'General and customizbles',
      link: '/progress',
      icon: Icons.refresh_outlined),
];
