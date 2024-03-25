import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/icons/ic-menu.png',
          width: 40,
        ),
        const Badge(
          label: Text('1'),
          child: Icon(
            FontAwesomeIcons.bell,
          ),
        ),
      ],
    );
  }
}
