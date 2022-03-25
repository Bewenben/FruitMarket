

// ignore_for_file: non_constant_identifier_names

import 'package:task1/constants/item_classes.dart';

List <OrderItem> OrdersList = [
  OrderItem("Broccoli", "assets/images/broccli.png"),
  OrderItem("Onions", "assets/images/onions.png"),
  OrderItem("Anjeer", "assets/images/anjeer.png")
];

List <FavItem> FavList = [
  FavItem("Grapes", 160, "assets/images/grapes.png",1,160),
  FavItem("Apricots", 180, "assets/images/apricot.png",1,180),
  FavItem("Broccoli", 190, "assets/images/broccli.png",1,190),
  FavItem("Onions", 130, "assets/images/onions.png",1, 130),
  FavItem("Anjeer", 260, "assets/images/anjeer.png",1,260),
];

List <TodayItems> TodayList = [
  TodayItems("Buy 1kg Get 200gms Free", "Buy one get one free for small sizes", "a few minutes ago", "assets/images/anjeer.png"),
  TodayItems("Get 20% Discount", "Get 20% discount offering today on buying peaches", "30 minutes ago", "assets/images/peaches.png"),
  TodayItems("Get 20 % Extra", "Get 20% discount offer on buying Broccoli today.", "1 hour ago", "assets/images/broccli.png"),
];

List <TodayItems> YesterdayList = [
  TodayItems("Your Order booked", "Rajesh will delivered your order.Thanksfor your order and stay with us.", "2 days ago", "assets/images/order.png"),
  TodayItems("Get 20 % Discount", "Get 20% discount offer on buying Watermelon today.","2 days ago", "assets/images/RealWaterMelons.png"),
];