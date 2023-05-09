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
      title: 'Progress Indicators',
      subTitle: 'General and customizbles',
      link: '/progress',
      icon: Icons.refresh_outlined),
  MenuItems(
      title: 'Sanckbars',
      subTitle: 'Snackbars',
      link: '/snackbars',
      icon: Icons.info_outlined),
  MenuItems(
      title: 'Animated container',
      subTitle: 'Widget animated',
      link: '/animated',
      icon: Icons.check_box_outline_blank_outlined),
  MenuItems(
      title: 'UI controls',
      subTitle: 'Commom controls',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'App tutorial',
      subTitle: 'Let\'s begin',
      link: '/tutorial',
      icon: Icons.home_outlined),
  MenuItems(
      title: 'Infinite scroll and push',
      subTitle: 'Infinite list and pull to refresh',
      link: '/infinite',
      icon: Icons.line_style_outlined),
  MenuItems(
      title: 'Counter',
      subTitle: 'Counts using riverpod',
      link: '/counter',
      icon: Icons.military_tech_sharp),
  MenuItems(
      title: 'Theme changer',
      subTitle: 'Change app theme',
      link: '/theme-changer',
      icon: Icons.color_lens_outlined),
];
