import 'package:flutter/material.dart';
import 'package:plants_shop/demo_data.dart';
import 'package:plants_shop/views/plant_detail_view/plant_detail_view.dart';
import 'package:plants_shop/provider/my_provider.dart';
import 'package:provider/provider.dart';

class PlantsGridView extends StatelessWidget {
  PlantsGridView({super.key});

  final List<DemoData> demoData = plants;

  @override
  Widget build(BuildContext context) {
    var myProvider = Provider.of<MyProvider>(context);
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: MediaQuery.of(context).size.height * 0.28,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
        ),
        itemCount: demoData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    PlantDetailView.routeName,
                    arguments: demoData[index],
                  );
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12)),
                    color: demoData[index].color,
                  ),
                  child: Hero(
                    tag: 'imagePlantCon ${demoData[index].index}',
                    child: Image.asset(
                      demoData[index].imagePath,
                      height: 200,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12)),
                  color: Colors.grey[200],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            demoData[index].title,
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            'Price: ${demoData[index].price}',
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          myProvider.addToCart(demoData[index]);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        icon: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
