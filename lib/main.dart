import 'package:flutter/material.dart';
import 'package:plants_shop/views/home/home_view.dart';
import 'package:plants_shop/views/plant_detail_view/plant_detail_view.dart';
import 'package:plants_shop/provider/my_provider.dart';
import 'package:plants_shop/views/start/start_view.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MyProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: StartScreen.routeName,
        routes: {
          StartScreen.routeName: (context) => const StartScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
          PlantDetailView.routeName: (context) => const PlantDetailView(),
        },
      ),
    );
  }
}
