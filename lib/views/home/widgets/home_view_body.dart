import 'package:flutter/material.dart';
import 'package:plants_shop/views/home/widgets/custom_app_bar.dart';
import 'package:plants_shop/views/home/widgets/plants_gridview.dart';
import 'package:plants_shop/views/home/widgets/search_section.dart';

class HomeScreenBody extends StatefulWidget {
  const HomeScreenBody({super.key});

  @override
  State<HomeScreenBody> createState() => _HomeScreenBodyState();
}

class _HomeScreenBodyState extends State<HomeScreenBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(
            height: 18,
          ),
          const Text(
            'Find Your \nHouse plants!',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const SearchSection(),
          const SizedBox(
            height: 30,
          ),
          TabBar(
            controller: _tabController,
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.transparent,
            indicator: BoxDecoration(
              color: const Color(0xFF89B9AD),
              borderRadius: BorderRadius.circular(10),
            ),
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            padding: const EdgeInsets.only(
              bottom: 20,
            ),
            isScrollable: true,
            tabs: const [
              Tab(
                child: Text('All'),
              ),
              Tab(
                child: Text('Flowers'),
              ),
              Tab(
                child: Text('Indoor'),
              ),
              Tab(
                child: Text('Office Plants'),
              ),
            ],
          ),
          PlantsGridView(),
        ],
      ),
    );
  }
}
