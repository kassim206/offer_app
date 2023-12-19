import 'package:flutter/material.dart';

class OfferModel {
  final String name;
  final IconData icon;
  final bool active;

  OfferModel({required this.name, required this.icon, required this.active});
}

//data
List offerData = [

  OfferModel(name: "Flight", icon: Icons.flight, active: true),
  OfferModel(name: "Hotel", icon: Icons.hotel, active: false),
  OfferModel(name: "Hotel", icon: Icons.location_on, active: false),
  OfferModel(name: "Food", icon: Icons.food_bank_rounded, active: false),
  OfferModel(name: "Trip", icon: Icons.business_center_rounded, active: false),
];
