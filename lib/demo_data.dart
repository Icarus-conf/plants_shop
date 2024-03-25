import 'package:flutter/material.dart';

class DemoData {
  String type;
  String title;
  String description;
  String price;
  String imagePath;
  double height;
  double diameter;
  int humidity;
  int index;
  Color color;
  DemoData({
    required this.type,
    required this.title,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.height,
    required this.diameter,
    required this.humidity,
    required this.index,
    required this.color,
  });
}

List<DemoData> plants = [
  DemoData(
      type: 'Plant Type',
      title: 'Plant name',
      height: 0.6,
      diameter: 12,
      humidity: 40,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum eros turpis, nec blandit turpis tempor ac. Pellentesque euismod congue metus a dapibus. Cras fermentum eros sed nunc aliquam sodales. Phasellus efficitur ligula mi, viverra ullamcorper risus mattis et. Ut dictum luctus gravida.',
      index: 1,
      price: '\$20',
      color: Colors.orange.withOpacity(0.5),
      imagePath: 'assets/images/1.png'),
  DemoData(
      type: 'Plant Type',
      title: 'Plant name',
      height: 0.6,
      diameter: 15,
      humidity: 10,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum eros turpis, nec blandit turpis tempor ac. Pellentesque euismod congue metus a dapibus. Cras fermentum eros sed nunc aliquam sodales. Phasellus efficitur ligula mi, viverra ullamcorper risus mattis et. Ut dictum luctus gravida.',
      price: '\$20',
      index: 2,
      color: Colors.blueGrey.withOpacity(0.5),
      imagePath: 'assets/images/2.png'),
  DemoData(
      type: 'Plant Type',
      title: 'Plant name',
      height: 0.8,
      diameter: 18,
      humidity: 24,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum eros turpis, nec blandit turpis tempor ac. Pellentesque euismod congue metus a dapibus. Cras fermentum eros sed nunc aliquam sodales. Phasellus efficitur ligula mi, viverra ullamcorper risus mattis et. Ut dictum luctus gravida.',
      price: '\$20',
      index: 3,
      color: Colors.amber.withOpacity(0.5),
      imagePath: 'assets/images/3.png'),
  DemoData(
      type: 'Plant Type',
      title: 'Plant name',
      height: 0.4,
      diameter: 12,
      humidity: 28,
      description:
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vestibulum eros turpis, nec blandit turpis tempor ac. Pellentesque euismod congue metus a dapibus. Cras fermentum eros sed nunc aliquam sodales. Phasellus efficitur ligula mi, viverra ullamcorper risus mattis et. Ut dictum luctus gravida.',
      price: '\$20',
      index: 4,
      color: Colors.grey.shade400.withOpacity(0.5),
      imagePath: 'assets/images/4.png'),
];
