import 'package:flutter/material.dart';
import 'package:tugasmandiripcs/komponenutama/b.dart';
import 'package:tugasmandiripcs/komponenutama/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override 
Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splashscreen(),
   onGenerateRoute: TempatRouters.jalannyaroutes,
   );
 }
}


class Product {
  final String imageUrl;
  final String name;
  final String price;
  final String description;
  bool isOrdered;

  Product({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.description,
    this.isOrdered = false,
  });
}
