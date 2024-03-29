import 'package:flutter/material.dart';

class MenuModel {
  final IconData icon;
  final String label;

  MenuModel({required this.icon, required this.label});
}

List<MenuModel> mainMenu = [
  MenuModel(icon: Icons.dashboard, label: 'Dashboard'),
  MenuModel(icon: Icons.people, label: 'Users'),
  MenuModel(icon: Icons.settings, label: 'Settings'),
  MenuModel(icon: Icons.logout, label: 'Logout'),
];
