import 'package:flutter/material.dart';
import 'package:plants_shop/views/start/widgets/start_view_body.dart';

class StartScreen extends StatelessWidget {
  static const String routeName = 'StartScreen';
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: StartScreenBody(),
    );
  }
}
