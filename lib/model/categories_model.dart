import 'package:flutter/material.dart';

class CategoryModel {
  final String name;
  final IconData icon;
  final bool active;

  CategoryModel({required this.name, required this.icon, required this.active});
}

//data
List categoryData = [
  CategoryModel(name: "Flight", icon: Icons.flight, active: true),
  CategoryModel(name: "Hotel", icon: Icons.hotel, active: false),
  CategoryModel(name: "Hotel", icon: Icons.location_on, active: false),
  CategoryModel(name: "Food", icon: Icons.food_bank_rounded, active: false),
  CategoryModel(name: "Trip", icon: Icons.business_center_rounded, active: false),
];
