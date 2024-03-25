import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:plants_shop/views/cart/cart_view.dart';

import 'package:plants_shop/views/favorite/widgets/favorite_view_body.dart';
import 'package:plants_shop/views/home/widgets/home_view_body.dart';
import 'package:plants_shop/views/profile/widgets/profile_view_body.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    const HomeScreenBody(),
    const CartView(),
    const FavoriteViewBody(),
    const ProfileViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (value) {
          selectedIndex = value;
          setState(() {});
        },
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: const [
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.house,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.bagShopping,
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                FontAwesomeIcons.heart,
              )),
          BottomNavigationBarItem(
            label: '',
            icon: Icon(
              Icons.person,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: tabs[selectedIndex],
      ),
    );
  }
}
