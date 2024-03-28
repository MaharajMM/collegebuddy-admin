import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon;
  final String title;

  MenuModel({required this.icon, required this.title});
}

List<MenuModel> mainMenu = [
  MenuModel(icon: Icons.dashboard, title: 'Dashboard'),
  MenuModel(icon: Icons.people, title: 'Users'),
  MenuModel(icon: Icons.settings, title: 'Settings'),
  MenuModel(icon: Icons.logout, title: 'Logout'),
];
